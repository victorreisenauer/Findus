import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lrs_app_v3/presenation/pages/exercise/templates/core/background.dart';

class BaseExercise extends StatefulWidget {
  final bool showAbort;
  final bool showHelp;
  final String help;
  final Widget child;
  final Function onHelpPressed;
  final Function onAbortPressed;
  const BaseExercise(
      {this.showAbort,
      this.showHelp,
      this.help,
      this.child,
      this.onHelpPressed,
      this.onAbortPressed});

  @override
  State<StatefulWidget> createState() {
    return _BaseExerciseState();
  }
}

class _BaseExerciseState extends State<BaseExercise>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            Background(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                // TODO create ProgressBar
                child: Text('ProgressBar placeholder'),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }

  Widget bottomButtons(bool close) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 1.0,
                spreadRadius: 0.5,
                offset: Offset(0.0, 2.0),
                color: Colors.black12)
          ],
          borderRadius: BorderRadius.circular(8.0),
          color: close
              ? Color.fromRGBO(225, 80, 80, 1)
              : Color.fromRGBO(73, 220, 174, 1),
        ),
        child: InkWell(
          onTap: () {
            /*BlocProvider.of<Exercise1Bloc>(context).add(close
                ? Exercise1EventShowAbortDialog()
                : Exercise1EventShowHelp());*/
          },
          child: Center(
            child: Text(
              close ? 'X' : '?',
              style: GoogleFonts.reemKufi(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  letterSpacing: 0.1),
            ),
          ),
        ),
      ),
    );
  }
}
