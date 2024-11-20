import 'package:flutter/material.dart';
import 'package:fl_componentes/widgets/widget.dart';

class CasaScreen extends StatelessWidget {
  final String imageUrl;
  final String textUrl;

  const CasaScreen({super.key, required this.imageUrl, required this.textUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(textUrl), // Cambia esto por el nombre que desees
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              CustomCardTipo2(imageUrl: imageUrl, textUrl: textUrl),
            ]));
  }
}