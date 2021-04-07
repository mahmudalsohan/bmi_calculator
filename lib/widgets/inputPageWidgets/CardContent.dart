import 'package:bmi_calculator/constants/constant.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final IconData icon;
  final String title;

  CardContent({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          title,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
