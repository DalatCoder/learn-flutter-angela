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
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              Text(
                'Trong Hieu',
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 25.0,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'WEB DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Example extends StatelessWidget {
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

class MyChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.red,
                  width: 100.0,
                ),
                Container(
                  width: 100.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                  width: 100.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
