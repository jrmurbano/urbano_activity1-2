import 'package:flutter/material.dart';
import '../widgets/three_text_row.dart';
import '../widgets/styled_info_box.dart';
import '../widgets/profile_contact_card.dart';
import '../widgets/stats_expanded_row.dart';
import '../widgets/icon_action_bar.dart';
import '../widgets/hero_stack_banner.dart';
import '../widgets/preferences_grid.dart';

/// Profile Page - Demonstrates all Second Activity tasks
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile Header
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Roshan Urbano',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Premium Member',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 24),

            // Quick action tabs
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: ThreeTextRow(
                text1: 'Stats',
                text2: 'Activity',
                text3: 'Settings',
              ),
            ),

            const SizedBox(height: 24),

            // Contact Information Card
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: ProfileContactCard(
                name: 'Roshan Urbano',
                email: 'roshanurbano@gmail.com',
                phone: '09291530238',
                avatarIcon: Icons.account_circle,
              ),
            ),

            const SizedBox(height: 20),

            // Profile Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Edit Profile')),
                        );
                      },
                      icon: const Icon(Icons.edit, size: 18),
                      label: const Text('Edit Profile'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('View Rental History')),
                        );
                      },
                      icon: const Icon(Icons.history, size: 18),
                      label: const Text('My Rentals'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Quick Actions Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: IconActionBar(
                onFavoritePressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Added to favorites')),
                  );
                },
                onSharePressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Share profile')),
                  );
                },
                onNotificationPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Notifications')),
                  );
                },
                onSettingsPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Settings')));
                },
              ),
            ),

            const SizedBox(height: 24),

            // Stats Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: StatsExpandedRow(
                stat1Title: 'Total Rentals',
                stat1Value: '24',
                stat2Title: 'Active Bookings',
                stat2Value: '3',
                stat1Color: Colors.blueAccent,
                stat2Color: Colors.green,
              ),
            ),

            const SizedBox(height: 24),

            // Hero Banner with Stack
            HeroStackBanner(
              imageAsset: 'assets/car.jpg',
              title: 'Drive Your Dreams',
              subtitle: 'Exclusive deals on premium cars',
              onActionPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Explore deals!')));
              },
            ),

            const SizedBox(height: 20),

            // Membership Benefits
            const StyledInfoBox(
              title: 'Membership Benefits',
              content:
                  'Enjoy exclusive discounts, priority bookings, and 24/7 customer support with your premium membership.',
              backgroundColor: Colors.blueAccent,
            ),

            const SizedBox(height: 24),

            // Rental Preferences Grid (Task 10: Nested Row/Column)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: PreferencesGrid(),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
