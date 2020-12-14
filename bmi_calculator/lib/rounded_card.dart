import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onCardTap;

  RoundedCard({@required this.colour, this.cardChild, this.onCardTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onCardTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(13.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
