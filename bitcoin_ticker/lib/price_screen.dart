import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  DropdownButton getAndroidDropdownMenu() {
    List<DropdownMenuItem> currencyItemsList = currenciesList
        .map(
          (String e) => DropdownMenuItem(
            child: Text(e),
            value: e,
          ),
        )
        .toList();

    String selectedCurrency = currenciesList[0];

    return DropdownButton<String>(
      value: selectedCurrency,
      items: currencyItemsList,
      onChanged: (newValue) {
        setState(() {
          selectedCurrency = newValue;
        });
      },
    );
  }

  CupertinoPicker getiOSPicker() {
    List<Text> currencyPickerItems =
        currenciesList.map((e) => Text(e)).toList();

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {},
      children: currencyPickerItems,
    );
  }

  Widget selectedMenu;

  @override
  void initState() {
    super.initState();
    selectedMenu = getAndroidDropdownMenu();

    if (Platform.isIOS) {
      selectedMenu = getiOSPicker();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: selectedMenu,
          ),
        ],
      ),
    );
  }
}
