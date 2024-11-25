import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  void displayDialog(BuildContext context) {
    // Para no perder eficiencia haciendolo StatefulWidget
    //print("He pulsado en la alerta");
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Alerta"),
            content: Text("Este es el contenido del mensaje de alerta"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () => displayDialog(
                      context,
                    ),
                child: const Text(
                  "Mostrar Alerta",
                  style: TextStyle(fontSize: 20),
                ))),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context)));
  }
}
