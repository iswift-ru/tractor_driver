import 'package:flutter/material.dart';
import 'package:tractor_driver/screens/TicketsList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExamGTN(),
    );
  }
}

class ExamGTN extends StatefulWidget {
  @override
  _ExamGTNState createState() => _ExamGTNState();
}

class _ExamGTNState extends State<ExamGTN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Экзамены ГосТехНадзора 2020'),
      ),
      body: TicketsList(),
    );
  }
}
