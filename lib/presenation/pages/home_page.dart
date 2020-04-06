import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String page;

  const HomePage({@required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          page,
          style: Theme.of(context).textTheme.display2,
        ),
      ),
    );
  }
}