import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            '$buttonTitle',
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerBackgroundColor,
        margin: EdgeInsets.only(top: 13.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
