import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  RoundIconButton({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      child: Icon(icon),
    );
  }
}
