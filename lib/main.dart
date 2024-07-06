import 'package:flutter/material.dart';
import 'package:proj4/screens/home.dart';

void main() => runApp(const PanucciRistorante());

class PanucciRistorante extends StatelessWidget {
  const PanucciRistorante({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Panucci Ristorante',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
      );
}
