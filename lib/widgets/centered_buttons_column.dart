import 'package:flutter/material.dart';

/// Task 2: Column with two centered Buttons
/// Demonstrates MainAxisAlignment.center for vertical centering
class CenteredButtonsColumn extends StatelessWidget {
  final String button1Text;
  final String button2Text;
  final VoidCallback? onButton1Pressed;
  final VoidCallback? onButton2Pressed;

  const CenteredButtonsColumn({
    super.key,
    this.button1Text = 'Button 1',
    this.button2Text = 'Button 2',
    this.onButton1Pressed,
    this.onButton2Pressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        children: [
          ElevatedButton(
            onPressed: onButton1Pressed ?? () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            child: Text(
              button1Text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onButton2Pressed ?? () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            child: Text(
              button2Text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
