import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/anuncio.dart';

class AnunciarCadastroScreen extends StatefulWidget {
  const AnunciarCadastroScreen({super.key, required this.anuncio});

  final Anuncio anuncio;

  @override
  State<AnunciarCadastroScreen> createState() => _AnunciarCadastroScreenState();
}

class _AnunciarCadastroScreenState extends State<AnunciarCadastroScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
