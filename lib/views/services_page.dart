import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/custom_rental_button.dart';
import '../widgets/car_card.dart';
import '../widgets/flexible_content_row.dart';

/// Services Page - Displays available car rental services
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Our Services',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Premium car rental services at your fingertips',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),

            // Service Cards
            _buildServiceCard(
              context,
              icon: Icons.airport_shuttle,
              title: 'Airport Transfers',
              description: 'Convenient pickup and drop-off services',
            ),
            const SizedBox(height: 20),
            _buildServiceCard(
              context,
              icon: Icons.weekend,
              title: 'Weekend Rentals',
              description: 'Special rates for weekend getaways',
            ),
            const SizedBox(height: 20),
            _buildServiceCard(
              context,
              icon: Icons.business,
              title: 'Corporate Plans',
              description: 'Flexible solutions for businesses',
            ),
            const SizedBox(height: 40),

            // Using the custom reusable button on Services page
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width < 400 ? 16 : 0,
              ),
              child: Center(
                child: CustomRentalButton(
                  text: 'Book a Service',
                  icon: Icons.calendar_today,
                  width: double.infinity,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Service booking initiated!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width < 400 ? 16 : 0,
              ),
              child: Center(
                child: CustomRentalButton(
                  text: 'Contact Support',
                  icon: Icons.support_agent,
                  backgroundColor: Colors.green,
                  width: double.infinity,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Opening support chat...'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 50),
            const Divider(thickness: 2),
            const SizedBox(height: 20),

            // Rental Plan Comparison (Task 8: Flexible)
            const Text(
              'Compare Rental Plans',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const FlexibleContentRow(
              leftTitle: 'HOURLY',
              leftContent:
                  'Perfect for short trips. Starting at \$15/hour with flexible pickup.',
              rightTitle: 'DAILY & WEEKLY',
              rightContent:
                  'Best value for extended use. Daily rates from \$89 with unlimited mileage. Weekly packages available with up to 30% savings.',
              leftFlex: 1,
              rightFlex: 2,
            ),

            const SizedBox(height: 40),
            const Divider(thickness: 2),
            const SizedBox(height: 20),

            // Available Cars Grid
            const Text(
              'Available Cars',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Staggered Grid View with Car Cards
            MasonryGridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return _buildCarCardForGrid(context, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Build car cards for the grid
  Widget _buildCarCardForGrid(BuildContext context, int index) {
    final cars = [
      {
        'icon': Icons.directions_car,
        'name': 'Toyota Vios',
        'model': '2025 G CVT',
        'desc': 'Reliable sedan for everyday drive',
        'rating': 4.9,
        'price': 250.00,
      },
      {
        'icon': Icons.airport_shuttle,
        'name': 'Toyota Fortuner',
        'model': '2024 SUV',
        'desc': 'Spacious 7-seater family SUV',
        'rating': 4.6,
        'price': 550.00,
      },
      {
        'icon': Icons.directions_car,
        'name': 'Kia Sonet',
        'model': '2024 Subcompact Crossover',
        'desc': 'Premium car for off-road and city driving',
        'rating': 4.8,
        'price': 300.00,
      },
      {
        'icon': Icons.local_shipping,
        'name': 'Toyota Hilux',
        'model': '2024 Pickup Truck',
        'desc': 'Powerful truck for heavy-duty tasks',
        'rating': 4.5,
        'price': 399.00,
      },
      {
        'icon': Icons.directions_car,
        'name': 'Honda Civic',
        'model': '2024 RS Type R',
        'desc': 'Timeless engineering at its best',
        'rating': 4.7,
        'price': 600.00,
      },
      {
        'icon': Icons.directions_car,
        'name': 'Honda Brio',
        'model': '2024 Hatchback',
        'desc': 'Reliable and fuel-efficient car',
        'rating': 4.4,
        'price': 200.00,
      },
    ];

    final car = cars[index];

    return CarCard(
      carIcon: car['icon'] as IconData,
      carName: car['name'] as String,
      carModel: car['model'] as String,
      description: car['desc'] as String,
      rating: car['rating'] as double,
      pricePerDay: car['price'] as double,
      onBookPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Booking ${car['name']}...'),
            duration: const Duration(seconds: 2),
          ),
        );
      },
      onFavoritePressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Added ${car['name']} to favorites!'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }

  Widget _buildServiceCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(isSmallScreen ? 16.0 : 20.0),
        child: isSmallScreen
            ? Column(
                children: [
                  Icon(icon, size: 40, color: Colors.blueAccent),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                children: [
                  Icon(icon, size: 50, color: Colors.blueAccent),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
