import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'rounded_card.dart';

const bottomContainerHeight = 50.0;
const bottomContainerBackgroundColor = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RoundedCard(
                    colour: selectedGender == Gender.Male
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onCardTap: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RoundedCard(
                    colour: selectedGender == Gender.Female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onCardTap: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: RoundedCard(colour: activeCardColour)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: RoundedCard(colour: activeCardColour)),
                Expanded(child: RoundedCard(colour: activeCardColour)),
              ],
            ),
          ),
          Container(
            color: bottomContainerBackgroundColor,
            margin: EdgeInsets.only(top: 13.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
