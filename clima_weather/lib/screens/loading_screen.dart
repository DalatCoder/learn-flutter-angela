import 'dart:convert';

import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const apiKey = '2fd5b8798feb79a6c02ffdcb95b8e867';
const apiURL = 'http://api.openweathermap.org/data/2.5/weather';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper =
        NetworkHelper('$apiURL?lat=$latitude&lon=$longitude&appid=$apiKey');
    var weatherData = networkHelper.getData();

    //       int condition = decodedData['weather'][0]['id'];
    // double temperature = decodedData['main']['temp'];
    // String cityName = decodedData['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello')),
    );
  }
}
