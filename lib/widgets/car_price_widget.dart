import 'package:flutter/material.dart';

/// Task 8: Smaller Component - Car Price Widget
/// Displays car rental price per day
class CarPriceWidget extends StatelessWidget {
  final double pricePerDay;
  final String currency;

  const CarPriceWidget({
    super.key,
    required this.pricePerDay,
    this.currency = '₱',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$currency${pricePerDay.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const Text(
            ' /day',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
