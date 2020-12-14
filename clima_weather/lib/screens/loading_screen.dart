import 'dart:convert';

import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    String url =
        'http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=2fd5b8798feb79a6c02ffdcb95b8e867';

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      int condition = decodedData['weather'][0]['id'];
      double temperature = decodedData['main']['temp'];
      String cityName = decodedData['name'];

      print(condition);
      print(temperature);
      print(cityName);
    } else {
      print('Oops! Something went wrong! ' + response.statusCode.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    getData();

    return Scaffold(
      body: Center(child: Text('Hello')),
    );
  }
}
