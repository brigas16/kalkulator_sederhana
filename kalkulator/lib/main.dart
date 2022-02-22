// ignore_for_file: unnecessary_new, deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Kalkulator Sederhana';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String resulttext = "0";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Hasil Perhitungan:",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              resulttext,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const Text("Input Pertama : "),
            new Flexible(
              child: new TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const Text("Input Kedua : "),
            new Flexible(
              child: new TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: const Text("+"),
              onPressed: () {
                setState(() {
                  int result = int.parse(num1controller.text) +
                      int.parse(num2controller.text);
                  resulttext = result.toString();
                });
              },
            ),
            RaisedButton(
              child: const Text("-"),
              onPressed: () {
                setState(() {
                  int result = int.parse(num1controller.text) -
                      int.parse(num2controller.text);
                  resulttext = result.toString();
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: const Text("x"),
              onPressed: () {
                setState(() {
                  int result = int.parse(num1controller.text) *
                      int.parse(num2controller.text);
                  resulttext = result.toString();
                });
              },
            ),
            RaisedButton(
              child: const Text("/"),
              onPressed: () {
                setState(() {
                  double result = double.parse(num1controller.text) /
                      double.parse(num2controller.text);
                  resulttext = result.toStringAsPrecision(3);
                });
              },
            )
          ],
        ),
      ],
    );
  }
}
