import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  RoundedCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
