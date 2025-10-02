import 'package:flutter/material.dart';

/// Task 8: Smaller Component - Car Rating Widget
/// Displays star rating for cars
class CarRatingWidget extends StatelessWidget {
  final double rating;
  final int maxRating;

  const CarRatingWidget({super.key, required this.rating, this.maxRating = 5});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(maxRating, (index) {
          if (index < rating.floor()) {
            return const Icon(Icons.star, color: Colors.amber, size: 20);
          } else if (index < rating) {
            return const Icon(Icons.star_half, color: Colors.amber, size: 20);
          } else {
            return const Icon(Icons.star_border, color: Colors.amber, size: 20);
          }
        }),
        const SizedBox(width: 8),
        Text(
          rating.toStringAsFixed(1),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
