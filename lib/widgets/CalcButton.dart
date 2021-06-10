import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color fillColor;

  const CalcButton({
    Key? key,
    required this.text,
    required this.fillColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.0,
      height: 65.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(fontSize: 24.0),
          ),
        ),
        onPressed: () {},
        color: fillColor,
      ),
    );
  }
}
