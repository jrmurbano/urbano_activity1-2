import 'package:flutter/material.dart';

/// Task 4: Custom Reusable Button Widget
/// A car-rental styled button that can be reused throughout the app
/// Demonstrates widget reusability and customization
class CustomRentalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;

  const CustomRentalButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.blueAccent,
          foregroundColor: textColor ?? Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 16 : 32,
            vertical: isSmallScreen ? 12 : 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, size: isSmallScreen ? 20 : 24),
              SizedBox(width: isSmallScreen ? 8 : 12),
            ],
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: isSmallScreen ? 14 : 18,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
