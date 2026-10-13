import 'package:flutter/material.dart';
import './widget/card1.dart';
import './widget/card2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 168, 30, 34),
          foregroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            'YOUTUBE',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
              letterSpacing: 8,
              color: Colors.white,
            ),
          ),
        ),

      
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Card1(),
              Card2(
                imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTSdnyFfiHHKp9sLhHTIwSzg-ZsJnKPSpfsS4RiU1bmVk3ucaB2v4Fko0&s=10',
                titulo: 'Arreglate',
                autor: 'Yuya',
                descripcion: 'Maquillaje perfecto para ti.',
              ),
              Card2(
                imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb9rKy3MB4Hd5z9zJdWSkj3a7U6yYUZhj6hoeQc5h8o3XN6xj4q4J4Ro0&s=10',
                titulo: 'Fotos con tu celular',
                autor: 'Yuya',
                descripcion: 'Captura momentos especiales con tu cámara.',
              ),
            ],
          ),
        ),

        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 189, 0, 0),
          unselectedItemColor: Colors.grey.shade600,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab Title'),
            BottomNavigationBarItem(icon: Icon(Icons.read_more), label: 'Tab Title'),
            BottomNavigationBarItem(icon: Icon(Icons.podcasts), label: 'Tab Title'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Tab Title'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Tab Title'),
          ],
        ),
      ),
    );
  }
}