import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  String _apiKey = '3EA90D9C-86D9-4D3B-8949-8CAB4E14F891';
  String _apiUrl = 'https://rest.coinapi.io/v1/exchangerate';

  String getApiURL(String coin, String currency) {
    return '$_apiUrl/$coin/$currency?apikey=$_apiKey';
  }

  Future<double> getExchangeRate(String coinType, String currency) async {
    http.Response response = await http.get(getApiURL(coinType, currency));

    if (response.statusCode != 200) return null;

    var decoded = jsonDecode(response.body);

    return decoded['rate'];
  }
}
