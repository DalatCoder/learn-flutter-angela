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

    return DropdownButton<String>(
      value: selectedCurrency,
      items: currencyItemsList,
      onChanged: (newValue) {
        setState(() {
          selectedCurrency = newValue;
          getData();
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
      onSelectedItemChanged: (selectedIndex) {
        selectedCurrency = currenciesList[selectedIndex];
        getData();
      },
      children: currencyPickerItems,
    );
  }

  Map<String, String> coinValues = {};
  bool isWaiting = false;

  String selectedCurrency = 'USD';

  void getData() async {
    isWaiting = true;

    try {
      var data = await CoinData().getCoinData(selectedCurrency);
      isWaiting = false;

      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  Column makeCards() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoList
          .map((e) => CoinItem(
              value: isWaiting ? '?' : coinValues[e],
              currency: selectedCurrency,
              coinType: e))
          .toList(),
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
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
          makeCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child:
                Platform.isAndroid ? getAndroidDropdownMenu() : getiOSPicker(),
          ),
        ],
      ),
    );
  }
}

class CoinItem extends StatelessWidget {
  const CoinItem({
    Key key,
    @required this.value,
    @required this.currency,
    @required this.coinType,
  }) : super(key: key);

  final String value;
  final String currency;
  final String coinType;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            '1 $coinType = $value $currency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
