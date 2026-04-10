import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../services/tflite_service.dart';

class ClassificationScreen extends StatefulWidget {
  @override
  State<ClassificationScreen> createState() => _ClassificationScreenState();
}

class _ClassificationScreenState extends State<ClassificationScreen> {
  final picker = ImagePicker();
  final tflite = TFLiteService();

  File? image;
  String result = 'No result';

  @override
  void initState() {
    super.initState();
    tflite.loadModel();
  }

  Future pickImage() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;

    final bytes = await picked.readAsBytes();

    setState(() {
      image = File(picked.path);
      result = tflite.runModel(bytes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fruit Classification')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null) Image.file(image!, height: 200),
          const SizedBox(height: 20),
          Text(
            result,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: pickImage,
            child: const Text('Select Image'),
          )
        ],
      ),
    );
  }
}
