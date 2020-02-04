import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/';
const apiKey = '?apikey=6E0B1193-F4C9-48D9-9BED-8085170D9F04';

class CoinData {
  Future getCoinData({String base}) async {
    String url = coinAPIURL + base + apiKey;
    http.Response response = await http.get(url);
    if (response.statusCode != 200) {
      print(response.statusCode);
      return;
    }

    String data = response.body;

    return jsonDecode(data);
  }
}
