import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ["Targaruen", "Stark", "Lannister", "Baratheon"];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 2"),
        ),
        body: ListView.separated(
            //Separar todas las opciones
            itemBuilder: (context, index) => // Devuelve los items de cada lista
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(options[index]),
                ),
            separatorBuilder: (context, index) =>
                const Divider(), // Para dividir los items
            itemCount: options.length // Número de elementos de la lista
            ));
  }
}
