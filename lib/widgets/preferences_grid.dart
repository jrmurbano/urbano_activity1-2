import 'package:flutter/material.dart';

/// Task 10: Nested Row/Column Grid Layout
///
/// Demonstrates creating a grid-like layout using ONLY nested Row and Column widgets,
/// without using GridView or any grid-specific widgets.
///
/// This creates a 2x3 grid (2 rows, 3 columns) of rental preference cards.
/// Each preference card shows an icon and label for different rental options.
class PreferencesGrid extends StatelessWidget {
  const PreferencesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rental Preferences',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // First Row of 3 preference cards
          Row(
            children: [
              Expanded(
                child: _buildPreferenceCard(
                  icon: Icons.electric_car,
                  label: 'Electric',
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPreferenceCard(
                  icon: Icons.local_gas_station,
                  label: 'Gasoline',
                  color: Colors.orange,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPreferenceCard(
                  icon: Icons.speed,
                  label: 'Sports',
                  color: Colors.red,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Second Row of 3 preference cards
          Row(
            children: [
              Expanded(
                child: _buildPreferenceCard(
                  icon: Icons.family_restroom,
                  label: 'Family',
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPreferenceCard(
                  icon: Icons.business_center,
                  label: 'Business',
                  color: Colors.purple,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildPreferenceCard(
                  icon: Icons.terrain,
                  label: 'SUV',
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Helper method to build individual preference cards
  /// Each card is a Container with padding, border, and centered content
  Widget _buildPreferenceCard({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 32, color: color),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
