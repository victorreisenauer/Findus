import 'package:flutter/material.dart';
import 'widgets/logout_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(child: LogoutButton()),
    );
  }
}
