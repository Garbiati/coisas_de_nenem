import 'package:flutter/material.dart';

class AnunciarScreen extends StatefulWidget {
  const AnunciarScreen({super.key});

  @override
  State<AnunciarScreen> createState() => _AnunciarScreenState();
}

class _AnunciarScreenState extends State<AnunciarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Anunciar"), actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconSize: 38,
          )
        ]),
        body: _buildBodyScreen());
  }

  Widget _buildBodyScreen() {
    return const Text("A tela anunciar ainda está vazia.");
  }
}