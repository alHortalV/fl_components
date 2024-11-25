import 'package:flutter/material.dart';
import 'package:fl_componentes/widgets/widget.dart';

class CasaScreen extends StatelessWidget {
  final String imageUrl;
  final String textUrl;
  final String descripcion;
  const CasaScreen(
      {super.key,
      required this.imageUrl,
      required this.textUrl,
      required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(textUrl),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              CustomCardTipo2(imageUrl: imageUrl, textUrl: descripcion),
            ]),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context)));
  }
}
