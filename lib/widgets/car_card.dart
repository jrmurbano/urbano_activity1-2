import 'package:flutter/material.dart';
import 'car_image_widget.dart';
import 'car_info_widget.dart';
import 'car_rating_widget.dart';
import 'car_price_widget.dart';
import 'custom_rental_button.dart';

/// Task 8: Refactored Car Card - Main Component
/// This widget demonstrates refactoring a complex widget into smaller reusable components
/// BEFORE: All logic was in one large widget (would be 150+ lines)
/// AFTER: Broken down into 5 smaller, reusable widgets
class CarCard extends StatelessWidget {
  final IconData carIcon;
  final String carName;
  final String carModel;
  final String description;
  final double rating;
  final double pricePerDay;
  final VoidCallback onBookPressed;
  final VoidCallback? onFavoritePressed;

  const CarCard({
    super.key,
    required this.carIcon,
    required this.carName,
    required this.carModel,
    required this.description,
    required this.rating,
    required this.pricePerDay,
    required this.onBookPressed,
    this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with favorite button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Available Now',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (onFavoritePressed != null)
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: onFavoritePressed,
                  ),
              ],
            ),

            const SizedBox(height: 16),

            // Car Image Widget (Refactored Component 1)
            Center(
              child: CarImageWidget(
                icon: carIcon,
                color: Colors.blueAccent,
                size: 80,
              ),
            ),

            const SizedBox(height: 20),

            // Car Info Widget (Refactored Component 2)
            CarInfoWidget(
              carName: carName,
              carModel: carModel,
              description: description,
            ),

            const SizedBox(height: 16),

            // Rating Widget (Refactored Component 3)
            CarRatingWidget(rating: rating),

            const SizedBox(height: 20),

            // Divider
            const Divider(),

            const SizedBox(height: 16),

            // Price and Book Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price Widget (Refactored Component 4)
                CarPriceWidget(pricePerDay: pricePerDay),

                // Book Button (Refactored Component 5 - from Task 4)
                CustomRentalButton(
                  text: 'Book Now',
                  icon: Icons.event_available,
                  onPressed: onBookPressed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
