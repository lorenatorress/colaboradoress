import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colaboradores"),
          titleTextStyle: TextStyle(color: Colors.blue, fontSize: 30),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Colaboradores(),
        ),
      ),
    ),
  );
}

class Colaboradores extends StatefulWidget {
  const Colaboradores({super.key});

  @override
  _ColaboradoresState createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  final listaProdutos = [
    {
      'nome': 'Juliana Albuquerque',
      'funcao': 'Cordenadora de apoio',
      'numero': '(81) 99731-8333',
      'email': 'julianaalbuquerque@email.com',
      'imagem': 'mulher.png'
    },
    {
      'nome': 'Angela Taís',
      'funcao': 'Chefe de obras',
      'numero': '(81) 99762-9832',
      'email': 'angelatais@email.com',
      'imagem': 'mulher.png'
    },
    {
      'nome': 'Carlos Alexandre',
      'funcao': 'Suporte',
      'numero': '(81) 9631-2343',
      'email': 'carlosalexandre@email.com',
      'imagem': 'homem.png'
    },
    {
      'nome': 'Ana Beatriz',
      'funcao': 'Atendente',
      'numero': '(81) 99746-2398',
      'email': 'anabeatriz@email.com',
      'imagem': 'mulher.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaProdutos.length,
      itemBuilder: (context, i) {
        var dados = listaProdutos[i];
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/" + dados['imagem'].toString(),
                  width: 40,
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dados['nome'].toString(),
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      dados['funcao'].toString(),
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      dados['numero'].toString(),
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      dados['email'].toString(),
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
            Divider(
              color: Color.fromARGB(255, 127, 127, 127),
            ),
          ],
        );
      },
    );
  }
}
