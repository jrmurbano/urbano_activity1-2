import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/custom_rental_button.dart';
import 'views/main_navigation.dart';

void main() {
  runApp(const CarRentalApp());
}

// Task 2: StatelessWidget Hello World - Car Rental Theme
class CarRentalApp extends StatelessWidget {
  const CarRentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarRent',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      // Task 6: Using MainNavigation with BottomNavigationBar
      home: const MainNavigation(),
    );
  }
}

// ============================================================================

class CarRentalWelcome extends StatefulWidget {
  const CarRentalWelcome({super.key});

  @override
  State<CarRentalWelcome> createState() => _CarRentalWelcomeState();
}

class _CarRentalWelcomeState extends State<CarRentalWelcome> {
  // State variable to track how many cars the user has viewed
  int _carsViewed = 0;

  // Method to increment the counter when user "views" a car
  void _incrementCarViews() {
    setState(() {
      _carsViewed++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarRent'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              // Welcome Section
              Icon(Icons.directions_car, size: 100, color: Colors.blueAccent),
              const SizedBox(height: 30),
              const Text(
                'Welcome to Roshans Road Rentals!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Rent Your Ride Today',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 40),

              // Counter Section
              const Text('Cars viewed:', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text(
                '$_carsViewed',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 30),

              // Task 4: Using custom reusable button widget
              CustomRentalButton(
                text: 'View a Car',
                icon: Icons.add_circle,
                onPressed: _incrementCarViews,
              ),

              const SizedBox(height: 50),
              const Divider(thickness: 2),
              const SizedBox(height: 20),

              // Task 5: Material & Cupertino Widgets Together
              const Text(
                'Quick Actions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Using both Material & Cupertino designs',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 30),

              // Row with Material and Cupertino buttons side by side
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Material Design Button
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Material Button: Browse Cars'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      icon: const Icon(Icons.directions_car),
                      label: const Text('Browse Cars'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Cupertino Design Button
                  Expanded(
                    child: CupertinoButton.filled(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Cupertino Button: Quick Rent'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: const Text('Quick Rent'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Material Card with Cupertino Icon
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Material Icon
                          const Icon(Icons.star, color: Colors.amber, size: 30),
                          const SizedBox(width: 10),
                          const Text(
                            'Featured Car',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          // Cupertino style activity indicator
                          const CupertinoActivityIndicator(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Tesla Model 3 - Available Now',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 15),
                      // Mixed: Material Slider
                      const Text(
                        'Days to rent: ',
                        style: TextStyle(fontSize: 14),
                      ),
                      Slider(
                        value: 3,
                        min: 1,
                        max: 7,
                        divisions: 6,
                        label: '3 days',
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Cupertino Button with Material Icon
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.orange,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Booking with mixed design!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.event_available,
                        color: Colors.white,
                      ), // Material Icon
                      SizedBox(width: 10),
                      Text('Book Now'), // Cupertino Button
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
