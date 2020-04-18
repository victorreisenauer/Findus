import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:lrs_data_client/lrs_api.dart';

var api = Api("https://api.lrs.hndrk.xyz/");

void main () async {
  
  if (!await api.checkConnection()) {
    print("ERROR: no connection to the server");
  }

  if (api.session == null) {
    print("logging in");
    api.login(username: "Admin", password: "admin");
  } 

  List lessons = await api.lessons;

  print(lessons);

  api.close();

}