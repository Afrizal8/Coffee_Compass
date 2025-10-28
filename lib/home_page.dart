import 'package:flutter/material.dart';
import 'coffee_data.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        title: const Text(
          "Coffee Compass",
          style: TextStyle(
            fontFamily: 'CreamCake', // font untuk judul aplikasi
            fontSize: 32,
            color: Color(0xFFFFE8C2),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          final coffee = coffeeList[index];
          return Card(
            margin: const EdgeInsets.all(8),
            color: const Color(0xFFFFF6E5), // sedikit krem biar lembut
            elevation: 3,
            child: ListTile(
              leading: Image.asset(coffee.image, width: 60, fit: BoxFit.cover),
              title: Text(
                coffee.name,
                style: const TextStyle(
                  fontFamily: 'CoffeeLatte', // font untuk nama kopi
                  fontSize: 22,
                  color: Color(0xFF3E2723),
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                coffee.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'SimpleHandmade', // font untuk deskripsi
                  fontSize: 16,
                  color: Color(0xFF6D4C41),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DetailPage(coffee: coffee)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
