import 'package:flutter/material.dart';
import '../services/voice_service.dart';

class VoiceAssistantScreen extends StatelessWidget {
  final voice = VoiceService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voice Assistant')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Speak'),
          onPressed: () async {
            String text = await voice.listen();
            await voice.speak("You said $text");
          },
        ),
      ),
    );
  }
}
