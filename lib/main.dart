import 'package:flutter/material.dart';
import 'package:calculator/widgets/widgets.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: Color(0xFF6C807F),
                ),
                CalcButton(
                  text: 'C',
                  fillColor: Color(0xFF6C807F),
                ),
                CalcButton(
                  text: '%',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
                CalcButton(
                  text: '/',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
