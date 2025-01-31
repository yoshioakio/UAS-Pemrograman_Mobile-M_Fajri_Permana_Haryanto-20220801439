import 'package:flutter/material.dart';

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
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const SizedBox.shrink(), // AppBar kosong karena tidak ada judul
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di sekitar konten
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Salam Pembuka
            const Text(
              'Haii',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 39, 20, 2),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mari belajar tentang keadaan lingkungan sekitar',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 39, 20, 2),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),

            // Kotak besar dengan judul Jenis-jenis Lingkungan
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Jenis-jenis Lingkungan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Grid untuk jenis-jenis lingkungan
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 kolom
                  crossAxisSpacing: 16.0, // Jarak antar kolom
                  mainAxisSpacing: 16.0, // Jarak antar baris
                  childAspectRatio: 1.0, // Menjaga rasio agar kotak tetap kotak
                ),
                itemCount: 8, // Total item = 8 jenis lingkungan
                itemBuilder: (context, index) {
                  final environmentTypes = [
                    'Lingkungan Darat',
                    'Lingkungan Air',
                    'Udara',
                    'Tanah',
                    'Hutan',
                    'Pantai',
                    'Gunung',
                    'Es',
                  ];
                  final environmentImages = [
                    'assets/images/D.png', // Ganti dengan gambar sesuai
                    'assets/images/L.png',
                    'assets/images/U.png',
                    'assets/images/T.png',
                    'assets/images/H.png',
                    'assets/images/P.png',
                    'assets/images/G.png',
                    'assets/images/E.png',
                  ];

                  return Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Gambar jenis lingkungan
                        Image.asset(
                          environmentImages[index],
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover, // Menyesuaikan gambar dalam kotak
                        ),
                        const SizedBox(height: 10),
                        // Teks jenis lingkungan
                        Text(
                          environmentTypes[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
