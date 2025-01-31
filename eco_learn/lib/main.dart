import 'package:flutter/material.dart';
import 'menu.dart'; // Mengimpor file menu.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoLearn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 212, 163, 112)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const SizedBox.shrink(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Vertikal tengah
          crossAxisAlignment: CrossAxisAlignment.center, // Horizontal tengah
          children: <Widget>[
            Image.asset(
              'assets/images/Lambang_Kementerian_Lingkungan_Hidup_dan_Kehutanan.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'EcoLearn',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 39, 20, 2),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Aplikasi edukasi pembelajaran tentang lingkungan dan keberlanjutan',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 40, 40, 40),
              ),
              textAlign: TextAlign.center, // Menjaga agar teks berada di tengah
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman menu.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
              child: const Text('Ayo Mengenal'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 119, 225, 123),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
