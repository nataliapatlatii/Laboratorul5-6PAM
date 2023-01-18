// ignore_for_file: file_names, library_prefixes*
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_lab_4/entity/Shop.dart';

Future readJsonData() async {
  final jsondata = await http
      .get(Uri.parse('http://mobile-shop-api.hiring.devebs.net/products'));
  if (jsondata.statusCode == 200) {
    final list = json.decode(jsondata.body);
    return Shop.fromJson(list);
  } else {
    throw Exception('Aplicatia nu merge din cauza indisponibilitatii jsonului');
  }
}
