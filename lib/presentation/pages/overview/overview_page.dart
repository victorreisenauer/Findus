import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:google_fonts/google_fonts.dart";

import "../../../application/lesson/lesson_bloc.dart";
import "../../../domain/core/value_objects.dart";
import "../../../injection.dart";
import "../../routes/router.gr.dart";
import "../core/cloud.dart";

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(166, 223, 249, 1.0),
        child: BlocProvider(
            create: (context) => getIt<LessonBloc>()..add(LessonEvent.fetchAllLessonIds()),
            child: BlocConsumer<LessonBloc, LessonState>(
              listener: (context, state) {
                if (state is LessonStarted) {
                  // add router here
                  ExtendedNavigator.of(context).pushExercisePage(exerciseList: state.exerciseList);
                }
              },
              builder: (context, state) {
                if (state is LessonLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state is LessonError) {
                  return Center(
                    child: Text(state.toString()),
                  );
                }
                if (state is AllLessonIdsLoaded) {
                  return SizedBox.expand(child: _OverviewPageBody(ids: state.ids));
                }
                return LayoutBuilder(builder: (context, constrains) {
                  return Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 125, width: constrains.maxWidth, child: CustomPaint(painter: _TopCloudPainter())),
                      ),
                      Center(
                        child: CircularProgressIndicator(),
                      )
                    ],
                  );
                });
              },
            )),
      ),
    );
  }
}

class _OverviewPageBody extends StatelessWidget {
  final Stream<UniqueId> ids;

  _OverviewPageBody({this.ids});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return StreamBuilder(
            stream: ids,
            builder: (context, snapshot) {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 125,
                      width: constrains.maxWidth,
                      child: CustomPaint(
                        painter: _TopCloudPainter(),
                      ),
                    ),
                    _getCloudRowWithLessons(snapshot.data, BlocProvider.of<LessonBloc>(context)),
                    Image.asset("assets/images/BottomOverview.jpg"),
                  ],
                ),
              );
            });
      },
    );
  }
}

Widget _getCloudRowWithLessons(List<UniqueId> ids, LessonBloc bloc) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _getCloudColumnChildren(true, ids, bloc),
      ),
      Column(
        children: _getCloudColumnChildren(false, ids, bloc),
      ),
    ],
  );
}

List<Widget> _getCloudColumnChildren(bool even, List<UniqueId> ids, LessonBloc bloc) {
  var widgets = <Widget>[];
  for (var i = even ? 0 : 1; i < ids.length; i += 2) {
    widgets.add(_getCloudWithID(ids[i], (i + 1).toString(), bloc));
  }
  if (widgets.isEmpty) widgets.add(Container());
  return widgets;
}

Widget _getCloudWithID(UniqueId id, String name, LessonBloc bloc) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30.0),
    child: GestureDetector(
        onTap: () {
          bloc.add(StartLesson(id));
        },
        child: Container(
          height: 100,
          width: 175,
          child: Cloud(
              child: Center(
            child: Text(
              "Lektion: $name",
              style: GoogleFonts.reemKufi(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          )),
        )),
  );
}

class _TopCloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var cloudPaintDarkerSky = Paint()
      ..color = Color.fromRGBO(213, 241, 254, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var cloudPaintLighterSky = Paint()
      ..color = Color.fromRGBO(225, 245, 254, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    var darkerSky = Path();
    darkerSky.moveTo(0.0, 0.0);
    darkerSky.lineTo(size.width, 0.0);
    darkerSky.lineTo(size.width, size.height * 0.6);

    darkerSky.quadraticBezierTo(size.width * 0.85, size.height * 0.85, size.width * 0.7, size.height * 0.6);
    darkerSky.quadraticBezierTo(size.width * 0.655, size.height * 0.85, size.width * 0.58, size.height * 0.65);
    darkerSky.quadraticBezierTo(size.width * 0.42, size.height * 1.0, size.width * 0.26, size.height * 0.65);
    darkerSky.quadraticBezierTo(size.width * 0.19, size.height * 0.8, size.width * 0.12, size.height * 0.6);
    darkerSky.quadraticBezierTo(size.width * 0.05, size.height * 0.75, 0.0, size.height * 0.6);

    darkerSky.lineTo(0.0, 0.0);
    canvas.drawPath(darkerSky, cloudPaintDarkerSky);

    var lighterSky = Path();
    lighterSky.moveTo(0.0, 0.0);
    lighterSky.lineTo(size.width, 0.0);
    lighterSky.lineTo(size.width, size.height * 0.08);

    lighterSky.quadraticBezierTo(size.width * 0.8, size.height * 0.8, size.width * 0.6, size.height * 0.3);
    lighterSky.quadraticBezierTo(size.width * 0.4, size.height * 0.8, size.width * 0.2, size.height * 0.3);
    lighterSky.quadraticBezierTo(size.width * 0.1, size.height * 0.55, 0.0, size.height * 0.45);

    lighterSky.lineTo(0.0, 0.0);

    canvas.drawPath(lighterSky, cloudPaintLighterSky);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
