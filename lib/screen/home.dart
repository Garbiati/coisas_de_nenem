import 'package:coisas_de_nenem/screen/anunciar.dart';
import 'package:coisas_de_nenem/screen/pesquisar.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: _buildBodyScreen(context));
  }

  Widget _buildBodyScreen(BuildContext context) {
    return Column(
      children: [
        Text(
          "Olá, Fulano.",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        Text("Você tem 5 novas mensagens."),
        Text("Total de visualizações: 12"),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AnunciarScreen()));
            },
            child: Text("Criar Novo")),
        TextFormField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            hintText: "procurar...",
            suffixIcon: Icon(Icons.search),
          ),
        ),
        _criarCarrosssel(),
      ],
    );
  }

  Widget _criarCarrosssel() {
    return Container(
        height: 200,
        width: 400,
        child: Column(
          children: [
            Text(
              "Perto de você",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  child: Image.network(
                      "https://m.media-amazon.com/images/I/512hEEIBtrL._AC_SX425_.jpg"),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Image.network(
                      "https://m.media-amazon.com/images/I/512hEEIBtrL._AC_SX425_.jpg"),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Image.network(
                      "https://m.media-amazon.com/images/I/512hEEIBtrL._AC_SX425_.jpg"),
                ),
              ],
            )
          ],
        ));
  }
}
