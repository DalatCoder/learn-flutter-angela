import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onButtonPressed;
  final IconData icon;

  RoundIconButton({@required this.icon, @required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onButtonPressed,
      child: Icon(icon),
    );
  }
}
