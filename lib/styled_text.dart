import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const StyledText(this.text,
      {this.fontSize = 28.0, this.color = Colors.white, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize, color: color));
  }
}
