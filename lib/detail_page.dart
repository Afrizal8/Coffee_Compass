import 'package:flutter/material.dart';
import 'coffee_data.dart';

class DetailPage extends StatelessWidget {
  final Coffee coffee;

  const DetailPage({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6E5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        title: Text(
          coffee.name,
          style: const TextStyle(
            fontFamily: 'CreamCake',
            fontSize: 30,
            color: Color(0xFFFFE8C2),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🖼️ Gambar utama
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(coffee.image),
              ),
              const SizedBox(height: 20),

              // ☕ Nama Kopi
              Text(
                coffee.name,
                style: const TextStyle(
                  fontFamily: 'CoffeeLatte',
                  fontSize: 28,
                  color: Color(0xFF3E2723),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              // 📖 Deskripsi
              Text(
                coffee.description,
                style: const TextStyle(
                  fontFamily: 'SimpleHandmade',
                  fontSize: 18,
                  color: Color(0xFF5D4037),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),

              // ❤️ Tambahan teks info / tagline
              const Text(
                "Enjoy your coffee moments ☕",
                style: TextStyle(
                  fontFamily: 'SimpleHandmade',
                  fontSize: 16,
                  color: Color(0xFF6F4E37),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
