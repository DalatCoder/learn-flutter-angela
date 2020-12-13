import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                Expanded(child: Card(colour: Color(0xFF1D1E33))),
                Expanded(child: Card(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: Card(colour: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Card(colour: Color(0xFF1D1E33))),
                Expanded(child: Card(colour: Color(0xFF1D1E33))),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color colour;

  Card({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
