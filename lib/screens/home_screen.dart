import 'package:flutter/material.dart';
import 'classification_screen.dart';
import 'voice_assistant_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SmartFruit')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Classify Fruit'),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ClassificationScreen())),
            ),
            ElevatedButton(
              child: const Text('Voice Assistant'),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => VoiceAssistantScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
