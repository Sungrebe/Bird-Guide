import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily:"Work Sans"),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/project_code_logo.png',
                scale: 1.5,
              ),
              const SizedBox(width: 15),
              const Text(
                'Bird Guide',
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Image.asset(
                'assets/home_page_image.png',
                scale: .5,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              Color.fromRGBO(182,215,168,100),
            ),
            onPressed: null,
            child: Row (
              children: [
                Icon(
                  Icons.photo_camera,
                ),
                SizedBox(width: 8),
                Text('Photo ID'),
              ]
            )
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              Color.fromRGBO(208,224,227,100),
            ),
            onPressed: null,
            child: Row (
              children: [
                Icon(
                  Icons.music_note,
                ),
                SizedBox(width: 8),
                Text('Sound ID'),
              ]
            )
          ),
        ],
      ),
      ),
    );
  }
}