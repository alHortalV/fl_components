import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  void displayDialog(BuildContext context) {
    // Para no perder eficiencia haciendolo StatefulWidget
    //print("He pulsado en la alerta");
    showDialog(
        barrierDismissible:
            false, // Para no poder salirse de la alerta haciendo clic fuera del recuadro
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Alerta"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Este es el contenido del mensaje de alerta"),
                SizedBox(height: 20),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar"))
            ],
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
