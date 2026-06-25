import 'package:flutter/material.dart';

Widget ImagemArtistas(String imagem, String nome) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imagem),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(height: 14),
      Flexible(
        child: Text(
          nome,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}