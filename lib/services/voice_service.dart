import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VoiceService {
  final SpeechToText _speech = SpeechToText();
  final FlutterTts _tts = FlutterTts();

  Future<String> listen() async {
    await _speech.initialize();
    String result = '';

    await _speech.listen(onResult: (res) {
      result = res.recognizedWords;
    });

    await Future.delayed(const Duration(seconds: 4));
    await _speech.stop();

    return result;
  }

  Future speak(String text) async {
    await _tts.speak(text);
  }
}
