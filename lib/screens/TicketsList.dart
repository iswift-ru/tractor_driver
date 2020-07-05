import 'dart:convert';
import 'dart:async' show Future;
import 'package:tractor_driver/json/ticket1.json';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tractor_driver/model_json/model_json.dart';
import 'package:tractor_driver/model_json/model_json2.dart';
import 'package:http/http.dart' as http;
import 'package:build_runner/build_runner.dart';

class TicketsList extends StatefulWidget {
  @override
  _TicketsListState createState() => _TicketsListState();
}

class _TicketsListState extends State<TicketsList> {
  Future<Questions> fetch() async {
    final response = await rootBundle.loadString('json/ticket1.json');

    var parsedJson = jsonDecode(response)['questions'];
    print('Дата $response');
//    var jsonResult = jsonDecode(data)['questions'];
//    print('Джейсон $jsonResult'.toString());
    return Questions.fromJson(parsedJson);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetch(),
      builder: (context, snapshot) {
        return Container();
      },
    );
  }
}
//Future<Company> fetch() async {
//  String src = "https://jsonplaceholder.typicode.com/users";
//
//  var response =
//  await http.get("https://jsonplaceholder.typicode.com/users");
//
//  print(response);
//  print(response.body);
//  print(response.statusCode);
//  if (response.statusCode == 200) {
//    var jsonResult = json.decode(response.body);
//    return Company.fromJson(jsonResult);
//  } else {
//    throw Exception('failed');
//  }
//}
