import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Kalkulator Sederhana';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String resulttext = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hasil Perhitungan:",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              new Text(
                resulttext,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("Input Pertama : "),
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
              Text("Input Kedua : "),
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
                child: Text("+"),
                onPressed: () {
                  setState(() {
                    int result = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              RaisedButton(
                child: Text("-"),
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
                child: Text("x"),
                onPressed: () {
                  setState(() {
                    int result = int.parse(num1controller.text) *
                        int.parse(num2controller.text);
                    resulttext = result.toString();
                  });
                },
              ),
              RaisedButton(
                child: Text("/"),
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
      ),
    );
  }
}
