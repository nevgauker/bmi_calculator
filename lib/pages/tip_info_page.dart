import 'package:flutter/material.dart';

class TipInfoPage extends StatelessWidget {
  TipInfoPage({this.info});

  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More info'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            info,
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.2,
              wordSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
