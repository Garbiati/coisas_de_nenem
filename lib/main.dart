import 'package:coisas_de_nenem/screen/anunciar.dart';
import 'package:coisas_de_nenem/screen/home.dart';
import 'package:coisas_de_nenem/screen/perfil.dart';
import 'package:coisas_de_nenem/screen/pesquisar.dart';
import 'package:coisas_de_nenem/screen/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coisas de Nenem',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const StartScreen(),
        "/home": (context) => const HomeScreen(),
        "/pesquisar": (context) => const PesquisarScreen(),
        "/anunciar": (context) => const AnunciarScreen(),
        "/perfil": (context) => const PerfilScreen(),
      },
    );
  }
}
