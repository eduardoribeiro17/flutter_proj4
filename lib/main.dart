import 'package:flutter/material.dart';

void main() {
  runApp(const PanucciRistorante());
}

class PanucciRistorante extends StatelessWidget {
  const PanucciRistorante({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panucci Ristorante',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(color: Colors.blue),
    );
  }
}
