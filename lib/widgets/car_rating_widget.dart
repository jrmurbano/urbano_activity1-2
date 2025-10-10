import 'package:flutter/material.dart';

/// Task 8: Smaller Component - Car Rating Widget
/// Displays star rating for cars
class CarRatingWidget extends StatelessWidget {
  final double rating;
  final int maxRating;

  const CarRatingWidget({super.key, required this.rating, this.maxRating = 5});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(maxRating, (index) {
              if (index < rating.floor()) {
                return Icon(Icons.star,
                    color: Colors.amber, size: isSmallScreen ? 16 : 20);
              } else if (index < rating) {
                return Icon(Icons.star_half,
                    color: Colors.amber, size: isSmallScreen ? 16 : 20);
              } else {
                return Icon(Icons.star_border,
                    color: Colors.amber, size: isSmallScreen ? 16 : 20);
              }
            }),
          ),
        ),
        SizedBox(width: isSmallScreen ? 4 : 8),
        Text(
          rating.toStringAsFixed(1),
          style: TextStyle(
            fontSize: isSmallScreen ? 14 : 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
