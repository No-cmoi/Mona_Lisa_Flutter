import 'package:flutter/material.dart';
import 'package:monalisa/museum_app.dart';

void main() {
  runApp(const MuseumApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Mona Lisa'),
        ),
      ),
    );
  }
}
