import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Shinta',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Kalkulator Shinta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var input1 = 0, input2 = 0, sum = 0;

  final TextEditingController a = new TextEditingController(text: " ");
  final TextEditingController b = new TextEditingController(text: " ");

  void tambah() {
    setState(() {
      input1 = int.parse(a.text);
      input2 = int.parse(b.text);
      sum = input1 + input2;
    });
  }

  void kurang() {
    setState(() {
      input1 = int.parse(a.text);
      input2 = int.parse(b.text);
      sum = input1 - input2;
    });
  }

  void kali() {
    setState(() {
      input1 = int.parse(a.text);
      input2 = int.parse(b.text);
      sum = input1 * input2;
    });
  }

  void bagi() {
    setState(() {
      input1 = int.parse(a.text);
      input2 = int.parse(b.text);
      sum = (input1 ~/ input2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hasil Perhitungan : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 30.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  border: OutlineInputBorder(), hintText: "Input Pertama"),
              controller: a,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 30.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  border: OutlineInputBorder(), hintText: "Input Kedua"),
              controller: b,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: kali,
                  child: new Text("x"),
                  color: Color(0xff0091EA),
                  textColor: Colors.white,
                ),
                RaisedButton(
                  onPressed: bagi,
                  child: new Text("/"),
                  color: Color(0xff0091EA),
                  textColor: Colors.white,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 15.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: tambah,
                  child: new Text("+"),
                  color: Color(0xff0091EA),
                  textColor: Colors.white,
                ),
                RaisedButton(
                  onPressed: kurang,
                  child: new Text("-"),
                  color: Color(0xff0091EA),
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}