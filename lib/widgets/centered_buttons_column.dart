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
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        children: [
          SizedBox(
            width: isSmallScreen ? double.infinity : null,
            child: ElevatedButton(
              onPressed: onButton1Pressed ?? () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 20 : 40,
                  vertical: 12,
                ),
              ),
              child: Text(
                button1Text,
                style: TextStyle(
                  fontSize: isSmallScreen ? 14 : 16,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: isSmallScreen ? double.infinity : null,
            child: ElevatedButton(
              onPressed: onButton2Pressed ?? () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 20 : 40,
                  vertical: 12,
                ),
              ),
              child: Text(
                button2Text,
                style: TextStyle(
                  fontSize: isSmallScreen ? 14 : 16,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
