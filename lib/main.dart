// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Cevap Verildi');
  }

  @override
  Widget build(BuildContext context) {
    var sorular = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("İlk Uygulamam"),
        ),
        body: Column(
          children: <Widget>[
            Text('Sorular!'),
            RaisedButton(
              child: Text('Cevap 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Cevap 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Cevap 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
