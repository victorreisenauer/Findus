import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';

import 'package:lrs_app_v3/injection.dart';
import '../../../application/lesson/lesson_bloc.dart';
import '../core/background_image.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';
import 'package:lrs_app_v3/presenation/pages/core/cloud.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(166, 223, 249, 1.0),
        child: BlocProvider(
            create: (context) =>
                getIt<LessonBloc>()..add(LessonEvent.fetchAllLessonIds()),
            child: BlocConsumer<LessonBloc, LessonState>(
              listener: (context, state) {
                if (state is LessonStarted) {
                  Router.navigator.pushNamed(Router.exercisePage,
                      arguments: ExercisePageArguments(
                          exerciseList: state.exerciseList));
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
                  return SizedBox.expand(
                      child: _OverviewPageBody(ids: state.ids));
                  /*ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: state.ids.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FlatButton(
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "Lektion ${index + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        onPressed: () {
                          return context
                              .bloc<LessonBloc>()
                              .add(StartLesson(state.ids[index]));
                        },
                      );
                    },
                  );*/
                }
                return LayoutBuilder(builder: (context, constrains) {
                  return Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 125,
                            width: constrains.maxWidth,
                            child: CustomPaint(painter: _TopCloudPainter())),
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
  List<UniqueId> ids;

  _OverviewPageBody({this.ids});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
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
              _getCloudRowWithLessons(
                  ids, BlocProvider.of<LessonBloc>(context)),
              /*Container(
                color: Colors.blue,
                height: 400,
                width: constrains.maxWidth,
                child: CustomPaint(
                  painter: _BottomPainter(),
                ),
              ),*/
              Image.asset('assets/images/BottomOverview.jpg'),
            ],
          ),
        );
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

List<Widget> _getCloudColumnChildren(
    bool even, List<UniqueId> ids, LessonBloc bloc) {
  List<Widget> widgets = List();
  for (int i = even ? 0 : 1; i < ids.length; i += 2) {
    widgets.add(_getCloudWithID(ids[i], (i + 1).toString(), bloc));
  }
  if (widgets.length == 0) widgets.add(Container());
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
              'Lektion: ' + name,
              style: GoogleFonts.reemKufi(
                  fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          )),
        )),
  );
}

class _BottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint green1 = Paint()
      ..color = Color.fromRGBO(114, 198, 93, 1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Paint green2 = Paint()
      ..color = Color.fromRGBO(108, 190, 88, 1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Paint green3 = Paint()
      ..color = Color.fromRGBO(102, 178, 82, 1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Paint tree1 = Paint()
      ..color = Color.fromRGBO(52, 159, 78, 1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Paint tree2 = Paint()
      ..color = Color.fromRGBO(55, 168, 78, 1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Paint tribe = Paint()
      ..color = Color.fromRGBO(159, 90, 60, 1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path ground1 = Path();
    ground1.moveTo(0, size.height * 0.8);
    ground1.lineTo(size.width, size.height * 0.8);
    ground1.lineTo(size.width, size.height);
    ground1.lineTo(0, size.height);

    canvas.drawPath(ground1, green3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class _TopCloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint cloudPaintDarkerSky = Paint()
      ..color = Color.fromRGBO(213, 241, 254, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Paint cloudPaintLighterSky = Paint()
      ..color = Color.fromRGBO(225, 245, 254, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path darkerSky = Path();
    darkerSky.moveTo(0.0, 0.0);
    darkerSky.lineTo(size.width, 0.0);
    darkerSky.lineTo(size.width, size.height * 0.6);

    darkerSky.quadraticBezierTo(size.width * 0.85, size.height * 0.85,
        size.width * 0.7, size.height * 0.6);
    darkerSky.quadraticBezierTo(size.width * 0.655, size.height * 0.85,
        size.width * 0.58, size.height * 0.65);
    darkerSky.quadraticBezierTo(size.width * 0.42, size.height * 1.0,
        size.width * 0.26, size.height * 0.65);
    darkerSky.quadraticBezierTo(size.width * 0.19, size.height * 0.8,
        size.width * 0.12, size.height * 0.6);
    darkerSky.quadraticBezierTo(
        size.width * 0.05, size.height * 0.75, 0.0, size.height * 0.6);

    darkerSky.lineTo(0.0, 0.0);
    canvas.drawPath(darkerSky, cloudPaintDarkerSky);

    Path lighterSky = Path();
    lighterSky.moveTo(0.0, 0.0);
    lighterSky.lineTo(size.width, 0.0);
    lighterSky.lineTo(size.width, size.height * 0.08);

    lighterSky.quadraticBezierTo(size.width * 0.8, size.height * 0.8,
        size.width * 0.6, size.height * 0.3);
    lighterSky.quadraticBezierTo(size.width * 0.4, size.height * 0.8,
        size.width * 0.2, size.height * 0.3);
    lighterSky.quadraticBezierTo(
        size.width * 0.1, size.height * 0.55, 0.0, size.height * 0.45);

    lighterSky.lineTo(0.0, 0.0);

    canvas.drawPath(lighterSky, cloudPaintLighterSky);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

/*
    Center(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(height: 110, width: 175, child: Cloud()),
                  ),
                ),
                Center(
                  child: FlatButton(
                    child: Text("hello"),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),

          */
