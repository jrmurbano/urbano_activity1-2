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
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isSmallScreen ? 8 : 16,
        vertical: isSmallScreen ? 6 : 8,
      ),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              '$currency${pricePerDay.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: isSmallScreen ? 18 : 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            ' /day',
            style: TextStyle(
              fontSize: isSmallScreen ? 12 : 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
