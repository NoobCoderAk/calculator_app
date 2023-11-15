import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 + num2;
  }

  void doSub() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 - num2;
  }

  void doMul() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 * num2;
  }

  void doDiv() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 ~/ num2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doAddition,
                  child: const Text("+"),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doSub,
                  child: const Text("-"),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doMul,
                  child: const Text("*"),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doDiv,
                  child: const Text("/"),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
