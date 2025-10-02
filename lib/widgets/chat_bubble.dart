import 'package:flutter/material.dart';

/// Task 9: Chat bubble using Container and Stack
/// Demonstrates custom Container shapes and Stack positioning
class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;
  final String time;

  const ChatBubble({
    super.key,
    required this.message,
    this.isSender = false,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Stack(
          children: [
            // Chat bubble container
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: isSender ? Colors.blueAccent : Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft: isSender
                      ? const Radius.circular(16)
                      : const Radius.circular(4),
                  bottomRight: isSender
                      ? const Radius.circular(4)
                      : const Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 15,
                      color: isSender ? Colors.white : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 11,
                      color: isSender
                          ? Colors.white.withOpacity(0.8)
                          : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            // Tail pointer using Positioned
            if (!isSender)
              Positioned(
                left: -5,
                bottom: 8,
                child: CustomPaint(
                  size: const Size(10, 10),
                  painter: _TailPainter(
                    color: Colors.grey[300]!,
                    isSender: false,
                  ),
                ),
              ),
            if (isSender)
              Positioned(
                right: -5,
                bottom: 8,
                child: CustomPaint(
                  size: const Size(10, 10),
                  painter: _TailPainter(
                    color: Colors.blueAccent,
                    isSender: true,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Custom painter for chat bubble tail
class _TailPainter extends CustomPainter {
  final Color color;
  final bool isSender;

  _TailPainter({required this.color, required this.isSender});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    if (isSender) {
      path.moveTo(0, 0);
      path.lineTo(size.width, size.height / 2);
      path.lineTo(0, size.height);
    } else {
      path.moveTo(size.width, 0);
      path.lineTo(0, size.height / 2);
      path.lineTo(size.width, size.height);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
