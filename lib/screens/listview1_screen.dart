import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ["Targaruen", "Stark", "Lannister", "Baratheon"];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 1"),
        ),
        body: ListView(
          children: [
            ...options // Recorre el array de options
                .map(
              (e) => ListTile(
                trailing: const Icon(Icons
                    .arrow_forward_ios_outlined), //leading para poner el icono a la izquierda
                title: Text(e),
              ),
            ), // Se puede remover

            //Hace el scroll solo
          ],
        ));
  }
}
