import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/presenation/routes/router.gr.dart';
import 'package:lrs_app_v3/presenation/pages/core/background_image.dart';
import 'package:lrs_app_v3/domain/core/value_objects.dart';


class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String userGreeting;
    String signInOrChangeUser;
    var profilePicture;
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState> (
        listener: (context, state) {
        },
        builder: (context, state)  {
          state.map(
            initial: (_) {}, 
            authenticated: (obj) {
              var valueOrFailure = obj.user.name.value.fold(
                (f) => f,
                (v) => v,
                );
              userGreeting = "Hey, $valueOrFailure!";     // TODO: fix string representation of names etc
              signInOrChangeUser = "Nutzer wechseln";
            },
            unauthenticated: (obj) {
              userGreeting = "Hey!";            // see above todo
              signInOrChangeUser = "Anmelden";
            }
          );
        return BackgroundImage(
          imagePath: "assets/images/welcome_background_plain.jpg",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(userGreeting, 
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white, 
                    )
                  )
                  )
                ),
              Expanded(
                flex: 5,
                child: Center(
                  child: Opacity(
                    opacity: 0.9,
                    child: Container(
                      height: 100,
                      width: 250,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: Colors.green[500],
                        onPressed: (){
                          Router.navigator.pushReplacementNamed(Router.homePage);
                        },
                        child: Text("Los Gehts!",
                          style: TextStyle(
                            color: Colors.blueGrey[800],
                            fontSize: 40,
                          ),
                        ),
                      )
                    )
                  ),
                  )
                ),
              
              Expanded(
                flex: 1,
                child: Center(
                  child: FlatButton(
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Text(signInOrChangeUser, 
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 17,
                    )
                    )
                    , onPressed: () {
                      Router.navigator.pushReplacementNamed(Router.signInPage);
                    },
                    )
                  )
                ),
            ],
          ),
        );
        }
      )
    );
  }
}