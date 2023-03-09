import 'package:flutter/material.dart';

class PesquisarScreen extends StatefulWidget {
  const PesquisarScreen({super.key});

  @override
  State<PesquisarScreen> createState() => _PesquisarScreenState();
}

class _PesquisarScreenState extends State<PesquisarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pesquisa"), actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconSize: 38,
          )
        ]),
        body: _buildBodyScreen());
  }

  Widget _buildBodyScreen() {
    return const Text("A tela pesquisa ainda está vazia.");
  }
}
