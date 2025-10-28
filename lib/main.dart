import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const CoffeeCompassApp());
}

class CoffeeCompassApp extends StatelessWidget {
  const CoffeeCompassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Compass',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6F4E37)),
        scaffoldBackgroundColor: const Color(0xFFF3E5AB),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
