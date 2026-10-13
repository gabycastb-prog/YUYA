import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  // Datos que recibe cada publicacion
  final String imagen;
  final String titulo;
  final String autor;
  final String descripcion;

  const Card2({
    super.key,
    required this.imagen,
    required this.titulo,
    required this.autor,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imagen,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              color: const Color.fromARGB(60, 168, 30, 34),
              colorBlendMode: BlendMode.multiply,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            titulo,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 4),

          Text(
            autor,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 3,
              color: Color.fromARGB(255, 168, 30, 34),
            ),
          ),
          const SizedBox(height: 6),

          Text(
            descripcion,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}