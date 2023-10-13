import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Bird Guide'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  File? _photo;

  Future _takePhoto() async {
    // allow the user to take a photo with their camera
  }

  Future _selectPhoto() async {
    // allow the user to pick a photo from their image gallery
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              key: const Key('photo_display'),
              margin: const EdgeInsets.all(8),
              width: screenSize.width,
              height: screenSize.height * 0.3,
              color: Colors.grey[300],
              child: const Center(
                child: Placeholder(), // replace this line with the logic for displaying the selected photo
              ),
            ),
            const SizedBox(height: 150),
            SizedBox(
              width: screenSize.width * 0.5,
              height: screenSize.height * 0.05,
              child: ElevatedButton(
                key: const Key('upload_photo_btn'),
                onPressed: _takePhoto, 
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.image_outlined),
                      SizedBox(width: 10),
                      Text('Select Photo'),
                    ],
                  ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: screenSize.width * 0.5,
              height: screenSize.height * 0.05,
              child: ElevatedButton(
                key: const Key('take_photo_btn'),
                onPressed: _selectPhoto, 
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.photo_camera),
                      SizedBox(width: 10),
                      Text('Take Photo'),
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
