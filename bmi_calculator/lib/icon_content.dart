import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xFF8D8E98),
);

const gapHeight = 8.0;
const iconSize = 60.0;

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icon, size: iconSize),
        SizedBox(height: gapHeight),
        Text(this.label, style: labelTextStyle)
      ],
    );
  }
}
