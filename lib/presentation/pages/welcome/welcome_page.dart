import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lrs_app_v3/application/auth/auth_bloc.dart';
import 'package:lrs_app_v3/presentation/routes/router.gr.dart';
import 'package:lrs_app_v3/presentation/pages/core/background_image.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is Authenticated) {
            var valueOrFailure = state.user.name.value.fold(
              (f) => f,
              (v) => v,
            );
            return BackgroundImage(
              imagePath: "assets/images/welcome_background_plain.jpg",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: userGreetingWidget("Hey, $valueOrFailure!"),
                  ),
                  Expanded(
                    flex: 5,
                    child: Stack(alignment: Alignment.center, children: [
                      goButton(),
                      userProfileWidget("assets/images/user_profile.jpg"),
                    ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: signInOrChangeUserWidget("Nutzer wechseln"),
                  )
                ],
              ),
            );
          }
          if (state is Unauthenticated) {
            return BackgroundImage(
              imagePath: "assets/images/welcome_background_plain.jpg",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: userGreetingWidget("Hey du!"),
                  ),
                  Expanded(
                    flex: 5,
                    child: Stack(alignment: Alignment.center, children: [
                      goButton(),
                    ]),
                  ),
                  Expanded(
                      flex: 1,
                      child: signInOrChangeUserWidget("Nutzer wechseln")),
                ],
              ),
            );
          }
          return Center(
            child: Text("No state was called"),
          );
        },
      ),
    );
  }

  Widget userGreetingWidget(String userGreeting) {
    return Center(
      child: Text(
        userGreeting,
        style: TextStyle(
          fontSize: 60,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget goButton() {
    return Positioned(
      child: Opacity(
        opacity: 0.9,
        child: Container(
          height: 100,
          width: 250,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.green[500],
            onPressed: () {
              Router.navigator.pushReplacementNamed(Router.overviewPage);
            },
            child: Text(
              "Los Gehts!",
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget userProfileWidget(userImagePath) {
    return Positioned(
      top: 5,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(userImagePath),
          ),
        ),
      ),
    );
  }

  Widget signInOrChangeUserWidget(String message) {
    return Center(
      child: FlatButton(
        color: Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 17,
          ),
        ),
        onPressed: () {
          Router.navigator.pushReplacementNamed(Router.signInPage);
        },
      ),
    );
  }
}
