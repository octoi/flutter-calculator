import 'package:flutter/material.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12.0),
              child: Text(
                '123*1',
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
                '123',
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
                  text: '÷',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '7',
                ),
                CalcButton(
                  text: '8',
                ),
                CalcButton(
                  text: '9',
                ),
                CalcButton(
                  text: '×',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '4',
                ),
                CalcButton(
                  text: '5',
                ),
                CalcButton(
                  text: '6',
                ),
                CalcButton(
                  text: '-',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '1',
                ),
                CalcButton(
                  text: '2',
                ),
                CalcButton(
                  text: '3',
                ),
                CalcButton(
                  text: '+',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '.',
                ),
                CalcButton(
                  text: '0',
                ),
                CalcButton(
                  text: '00',
                  textSize: 26,
                ),
                CalcButton(
                  text: '=',
                  fillColor: Colors.white,
                  textColor: Color(0xFF65BDAC),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
