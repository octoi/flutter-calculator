import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;

  const CalcButton({
    Key? key,
    required this.text,
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
        child: Text(text),
        onPressed: () {},
        color: Colors.blue,
      ),
    );
  }
}
