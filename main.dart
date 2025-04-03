import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name and School Display',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DisplayInfo(),
    );
  }
}

class DisplayInfo extends StatelessWidget {
  const DisplayInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Jacky Guilhomme',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // Adds spacing between the two texts
            Text(
              'École Supérieure d\'Infotronique d\'Haïti',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 33, 109, 195),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
