import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100.0,
                color: Colors.white,
                child: Center(child: Text('Container 1')),
              ),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Center(child: Text('Container 2')),
              ),
              Container(
                height: 100.0,
                color: Colors.red,
                child: Center(
                  child: Text('Container 3'),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
