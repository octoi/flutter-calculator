import 'package:flutter/material.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12.0),
              child: Text(
                _history,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 24.0),
                  color: Color(0xFF545F61),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                _expression,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 48.0),
                  color: Colors.white,
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: Color(0xFF6C807F),
                  textSize: 24,
                  callback: allClear,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: Color(0xFF6C807F),
                  callback: clear,
                ),
                CalcButton(
                  text: '%',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                  callback: numClick,
                ),
                CalcButton(
                  text: '/',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '7',
                  callback: numClick,
                ),
                CalcButton(
                  text: '8',
                  callback: numClick,
                ),
                CalcButton(
                  text: '9',
                  callback: numClick,
                ),
                CalcButton(
                  text: '*',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '4',
                  callback: numClick,
                ),
                CalcButton(
                  text: '5',
                  callback: numClick,
                ),
                CalcButton(
                  text: '6',
                  callback: numClick,
                ),
                CalcButton(
                  text: '-',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '1',
                  callback: numClick,
                ),
                CalcButton(
                  text: '2',
                  callback: numClick,
                ),
                CalcButton(
                  text: '3',
                  callback: numClick,
                ),
                CalcButton(
                  text: '+',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '.',
                  callback: numClick,
                ),
                CalcButton(
                  text: '0',
                  callback: numClick,
                ),
                CalcButton(
                  text: '00',
                  textSize: 26,
                  callback: numClick,
                ),
                CalcButton(
                  text: '=',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                  callback: evaluate,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
