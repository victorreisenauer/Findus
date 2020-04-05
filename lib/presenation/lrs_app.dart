import 'package:flutter/material.dart';


import 'package:lrs_app_v3/presenation/pages/sign_in/sign_in_page.dart/';


class LrsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "LRS App",
        initialRoute: '/sign_in',    
        routes: {
          '/sign_in' : (context) => SignInPage(),
        }  
    );
  }
}
