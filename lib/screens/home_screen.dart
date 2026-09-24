import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> catalogs = const [
    {
      'name': 'The Brothers Karamazov by Fyodor Dostoevsky',
      'price': 'Rp 274.000',
      'description':
          'Novel import penerbit Dessert Monkey Books.',
    },
    {
      'name': 'No Country For Old Men by Comac McCarthy',
      'price': 'Rp 113.557',
      'description':
          'Novel import penerbit Sunday Wordpress.',
    },
    {
      'name': 'The Silmarillion by J.R.R. Tolkien',
      'price': 'Rp 223.000',
      'description':
          'Novel import penerbit Gimli Publishing House.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Buku'),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: catalogs.length,
        itemBuilder: (context, index) {
          final catalog = catalogs[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 4,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),

              leading: CircleAvatar(
                radius: 28,
                child: Text(
                  catalog['name']![0],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              title: Text(
                catalog['name']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  catalog['price']!,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      name: catalog['name']!,
                      price: catalog['price']!,
                      description: catalog['description']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}