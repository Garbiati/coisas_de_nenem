import 'package:coisas_de_nenem/screen/anunciar.dart';
import 'package:coisas_de_nenem/screen/perfil.dart';
import 'package:coisas_de_nenem/screen/pesquisar.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final title = const Text("Makuna, controle de revendas.");
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: const <Widget>[
            HomeScreen(),
            AnunciarScreen(),
            PesquisarScreen(),
            PerfilScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Página Inicial'),
            BottomNavigationBarItem(
                icon: Icon(Icons.volume_up), label: 'Anunciar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Pesquisar'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ],
        ));
  }
}
