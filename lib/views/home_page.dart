import 'package:flutter/material.dart';
import '../widgets/custom_rental_button.dart';
import '../widgets/car_card.dart';
import '../widgets/centered_buttons_column.dart';
import 'chat_support_page.dart';

/// Home Page - Main landing page for the car rental app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - CarRent'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome Section
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Icon(
                    Icons.directions_car,
                    size: 100,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to CarRent!',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Find your perfect ride today',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  // Centered Buttons Demo (Task 2)
                  CenteredButtonsColumn(
                    button1Text: 'Quick Rental',
                    button2Text: 'Contact Us',
                    onButton1Pressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Quick rental selected'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    onButton2Pressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatSupportPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomRentalButton(
                    text: 'Browse All Cars',
                    icon: Icons.search,
                    width: double.infinity,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Browsing all available cars...'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            const Divider(thickness: 2),

            // Featured Car Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Featured Car',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Featured car card
            CarCard(
              carIcon: Icons.directions_car,
              carName: 'Tesla Model 3',
              carModel: '2024 Electric Sedan',
              description: 'Premium electric vehicle with autopilot features',
              rating: 4.8,
              pricePerDay: 89.99,
              onBookPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Booking Tesla Model 3...'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onFavoritePressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Added to favorites!'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
