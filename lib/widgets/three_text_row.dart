import 'package:flutter/material.dart';

/// Second Activity - Task 1: Three Text widgets in Row with equal spacing
/// Demonstrates Row layout with MainAxisAlignment.spaceEvenly
class ThreeTextRow extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final TextStyle? textStyle;

  const ThreeTextRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text1,
          style:
              textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
        ),
        Text(
          text2,
          style:
              textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
        ),
        Text(
          text3,
          style:
              textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
        ),
      ],
    );
  }
}
