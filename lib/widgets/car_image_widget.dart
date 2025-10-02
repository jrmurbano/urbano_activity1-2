import 'package:flutter/material.dart';

/// Task 8: Smaller Component - Car Image Widget
/// Reusable widget to display car icon/image
class CarImageWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  const CarImageWidget({
    super.key,
    required this.icon,
    this.color = Colors.blueAccent,
    this.size = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, size: size, color: color),
    );
  }
}
