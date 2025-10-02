import 'package:flutter/material.dart';

/// Task 5: Row with two Expanded Containers
/// Demonstrates Expanded widget for equal space distribution
class StatsExpandedRow extends StatelessWidget {
  final String stat1Title;
  final String stat1Value;
  final String stat2Title;
  final String stat2Value;
  final Color stat1Color;
  final Color stat2Color;

  const StatsExpandedRow({
    super.key,
    required this.stat1Title,
    required this.stat1Value,
    required this.stat2Title,
    required this.stat2Value,
    this.stat1Color = Colors.blueAccent,
    this.stat2Color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First Expanded Container - takes equal space
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: stat1Color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  stat1Value,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  stat1Title,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        // Second Expanded Container - takes equal space
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: stat2Color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  stat2Value,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  stat2Title,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
