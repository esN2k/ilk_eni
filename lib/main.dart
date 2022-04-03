// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_print, deprecated_member_use

import 'package:flutter/material.dart'; // Scaffold, Buton ve AppBar için gerekli kaynaklar
import 'dart:math'; //Sorulan sorular için gerekli olan rastgele

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(
    MyApp()); //MyApp sonuç verirse main'i çalıştır, vermez ise çalıştırma

class MyApp extends StatelessWidget {
  //
  void answerQuestion() {
    print('Answer Verildi');
  }

  @override
  Widget build(BuildContext context) {
    Random random = Random(); //Random, MyApp'ın hazır tanımladığı bir metod.
    int randomSoru = random.nextInt(6);
    var sorular = [
      'What\'s your favorite color?', //0
      'What\'s your favorite song?', //1
      'What\'s your favorite animal?', //2
      'What\'s your favorite artist?', //3
      'What\'s your favorite movie?', //4
      'What\'s your favorite activity?', //5
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("İlk Uygulama"),
        ),
        body: Column(
          children: <Widget>[
            Text(sorular[
                randomSoru]), //Sorular artık bir List, Dart'ın otomatik verdiği bir varsayılan nesne, baya methodu var.

            //Text(sorular.elementAt(randomSoru),), //Liste indexleri 0 ile başlar

            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 1 seçildi!'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 seçildi!'),
            ),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 seçildi!');
                }),
          ],
        ),
      ),
    );
  }
}
