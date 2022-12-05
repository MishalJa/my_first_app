import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class curry {
var value;
var AUD;
var EUR;
var GPB;
var CAD;

curry({this.value});
  Future<void> cur(List<String> arguments) async {
    var url =
    Uri.parse('https://api.freecurrencyapi.com/v1/latest?apikey=MlBX1je4PosyJNPDf39GKXryBdE6AxJJHBw6wQLN&currencies=EUR%2CCAD%2CAUD%2CGBP');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map;
     var AUDcurrenc = jsonResponse['data'].values.elementAt(0);
     AUD = AUDcurrenc.toString();
      var CADcurrenc = jsonResponse['data'].values.elementAt(1);
     CAD = CADcurrenc.toString();
      var EURcurrenc = jsonResponse['data'].values.elementAt(2);
      EUR = EURcurrenc.toString();
      var GPBcurrenc = jsonResponse['data'].values.elementAt(3);
      GPB = GPBcurrenc.toString();
      //print('Today currencys value against USD is: $currency.');
    } else {
      //print('Request failed with status: ${response.statusCode}.');
    }
  }
}
