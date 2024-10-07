import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Президенты',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardScreen(),
    );
  }
}

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cards = [
      {
        'image': 'assets/images/photo1.jpg',
        'description': 'Президент Франции: Эмманюэль Макрон',
      },
      {
        'image': 'assets/images/photo2.jpg',
        'description': 'Президент России: Владимир Путин',
      },
      {
        'image': 'assets/images/photo3.jpg',
        'description': 'Президент Азербайджана: Ильхам Алиев',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Президенты'),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(card['image']!),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    card['description']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
