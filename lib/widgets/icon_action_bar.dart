import 'package:flutter/material.dart';

/// Task 6: Row with evenly spaced icons using MainAxisAlignment.spaceEvenly
/// Demonstrates action bar with icon buttons
class IconActionBar extends StatelessWidget {
  final VoidCallback? onFavoritePressed;
  final VoidCallback? onSharePressed;
  final VoidCallback? onNotificationPressed;
  final VoidCallback? onSettingsPressed;

  const IconActionBar({
    super.key,
    this.onFavoritePressed,
    this.onSharePressed,
    this.onNotificationPressed,
    this.onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even spacing
        children: [
          _buildIconButton(
            icon: Icons.favorite_border,
            label: 'Favorites',
            color: Colors.red,
            onPressed: onFavoritePressed ?? () {},
          ),
          _buildIconButton(
            icon: Icons.share,
            label: 'Share',
            color: Colors.blue,
            onPressed: onSharePressed ?? () {},
          ),
          _buildIconButton(
            icon: Icons.notifications_none,
            label: 'Alerts',
            color: Colors.orange,
            onPressed: onNotificationPressed ?? () {},
          ),
          _buildIconButton(
            icon: Icons.settings,
            label: 'Settings',
            color: Colors.grey,
            onPressed: onSettingsPressed ?? () {},
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 28, color: color),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
