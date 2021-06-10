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
        body: Center(
          child: CalcButton(
            text: '1',
            fillColor: Colors.white,
            textColor: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
