import 'package:flutter/material.dart';
import '../widgets/chat_bubble.dart';

/// Chat Support Page - Customer support chat interface
class ChatSupportPage extends StatelessWidget {
  const ChatSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Support'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Support agent header
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue[50],
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.support_agent, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CarRent Support Team',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Typically replies in a few minutes',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Chat messages
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: const SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    ChatBubble(
                      message:
                          'Hello! Welcome to CarRent support. How can I help you today?',
                      isSender: false,
                      time: '10:00 AM',
                    ),
                    ChatBubble(
                      message: 'Hi! I need help with my upcoming rental.',
                      isSender: true,
                      time: '10:30 AM',
                    ),
                    ChatBubble(
                      message:
                          'I\'d be happy to help! What do you need assistance with?',
                      isSender: false,
                      time: '10:31 AM',
                    ),
                    ChatBubble(
                      message: 'Can I extend my rental period by 2 days?',
                      isSender: true,
                      time: '10:32 AM',
                    ),
                    ChatBubble(
                      message:
                          'Absolutely! I can help you extend your rental. Let me check availability for you.',
                      isSender: false,
                      time: '10:33 AM',
                    ),
                    ChatBubble(
                      message: 'Great! Also, what\'s your cancellation policy?',
                      isSender: true,
                      time: '10:34 AM',
                    ),
                    ChatBubble(
                      message:
                          'You can cancel up to 24 hours before pickup for a full refund. Would you like me to send you the complete policy details?',
                      isSender: false,
                      time: '10:35 AM',
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Message input (placeholder)
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
