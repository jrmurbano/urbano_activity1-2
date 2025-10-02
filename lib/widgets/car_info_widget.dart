import 'package:flutter/material.dart';

/// Task 8: Smaller Component - Car Info Widget
/// Displays car name, model, and description
class CarInfoWidget extends StatelessWidget {
  final String carName;
  final String carModel;
  final String description;

  const CarInfoWidget({
    super.key,
    required this.carName,
    required this.carModel,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          carName,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          carModel,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
