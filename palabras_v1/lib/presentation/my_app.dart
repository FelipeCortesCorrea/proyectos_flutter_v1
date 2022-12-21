import 'package:flutter/material.dart';
import 'package:palabras_v0/presentation/random_words.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generador de Palabras',
      home: RandomWords(),
    );
  }
}