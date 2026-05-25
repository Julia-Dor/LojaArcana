import 'package:flutter/material.dart';
import 'package:projf_lojaarcana/screens/inicio_page.dart';

void main() {
  runApp(LojaArcanaApp());
}

class LojaArcanaApp extends StatelessWidget {
  const LojaArcanaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioPage(),
    );
  }
}
