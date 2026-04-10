import 'dart:io';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart';

class TFLiteService {
  late Interpreter _interpreter;
  late List<String> _labels;

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset('fruit_classifier.tflite');
    _labels = (await rootBundle.loadString('assets/labels.txt')).split('\n');
  }

  String runModel(Uint8List imageBytes) {
    var input = imageBytes.sublist(0, 224 * 224 * 3);
    var output = List.filled(_labels.length, 0.0).reshape([1, _labels.length]);

    _interpreter.run(input.reshape([1, 224, 224, 3]), output);

    int index = output[0].indexOf(output[0].reduce((a, b) => a > b ? a : b));

    return _labels[index];
  }
}
