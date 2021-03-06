import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color fillColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key? key,
    required this.text,
    required this.callback,
    this.fillColor = Colors.transparent,
    this.textColor = Colors.white,
    this.textSize = 28.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 65.0,
      height: 65.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(fontSize: textSize),
          ),
        ),
        onPressed: () {
          callback(text);
        },
        color: fillColor,
        textColor: textColor,
      ),
    );
  }
}
