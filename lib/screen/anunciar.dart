import 'package:coisas_de_nenem/models/anuncio.dart';
import 'package:coisas_de_nenem/utils/customStyles.dart';
import 'package:flutter/material.dart';

import '../daos/anuncio_dao.dart';
import '../utils/customWidgets.dart';
import 'anunciarCadastro.dart';

class AnunciarScreen extends StatefulWidget {
  const AnunciarScreen({super.key});

  @override
  State<AnunciarScreen> createState() => _AnunciarScreenState();
}

class _AnunciarScreenState extends State<AnunciarScreen> {
  final title = const Text("Meus anuncios.");
  List<Anuncio> anuncios = [];

  @override
  void initState() {
    super.initState();
    getAllAnuncios();
  }

  getAllAnuncios() async {
    List<Anuncio> result = await AnuncioDAO().readAll();
    setState(() {
      anuncios = result;
    });
  }

    deleteAnuncioById(int id) async {
    await AnuncioDAO().deleteAnuncio(id);
    getAllAnuncios();
  }

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

  Widget _exibirLista() {
    return ListView.separated(
        itemBuilder: (context, index) => _buildItem(index),
        separatorBuilder: (context, index) => divisorList(),
        itemCount: anuncios.length);
  }

  Widget _buildItem(int index) {
    Anuncio anuncio = anuncios[index];
    return Padding(
      padding: cardPadding,
      child: Container(
        decoration: cardBoxStyle(),
        child: ListTile(
          leading: Text(anuncio.id!.toString()),
          title: Text(anuncio.descricao),
          subtitle: Text(anuncio.descricaoAdicional),
          onLongPress: () {
            deleteAnuncioById(anuncio.id!);
          },
          onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AnunciarCadastroScreen(anuncio: anuncio)))
                .then((produto) => getAllAnuncios());
          },
        ),
      ),
    );
  }
}
