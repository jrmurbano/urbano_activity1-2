import 'package:flutter/material.dart';

/// Task 3: Container with padding, margin, and backgroundColor
/// Demonstrates Container styling properties
class StyledInfoBox extends StatelessWidget {
  final String title;
  final String content;
  final Color backgroundColor;
  final Color textColor;

  const StyledInfoBox({
    super.key,
    required this.title,
    required this.content,
    this.backgroundColor = Colors.blueAccent,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Margin: space outside the container
      margin: const EdgeInsets.all(16.0),
      // Padding: space inside the container
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      // Background color
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 14, color: textColor.withOpacity(0.9)),
          ),
        ],
      ),
    );
  }
}
