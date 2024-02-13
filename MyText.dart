import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String textContent;
  double textSize;
  MyText(this.textContent, this.textSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: TextStyle(fontSize: textSize),
    );
  }
}
