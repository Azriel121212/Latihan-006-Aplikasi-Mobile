import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiga Aturan Layout Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tiga Aturan Layout Flutter'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: const MyPages3(),
      ),
    );
  }
}

class MyPages3 extends StatelessWidget {
  const MyPages3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '3. Aturan Posisi (dengan Align)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak biru 80x80 ditempatkan di pojok kanan bawah menggunakan widget Align.'),
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300],
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.blueAccent,
                    child: const Center(child: Text('Align', style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}