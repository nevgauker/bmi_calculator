import 'package:flutter/material.dart';
import '../constants.dart';

class GenderButton extends StatelessWidget {
  final IconData icon;
  final String label;

  GenderButton({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kIconTextSpace,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
