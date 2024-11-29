import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        // Poder hacer scroll hacia arriba y hacia abajo si ocupa más de la pantalla el contenido
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              autofocus: true, // Se pone el cursor en el campo de texto
              //initialValue: "Escribe aquí",
              textCapitalization: TextCapitalization
                  .words, // Para poner en mayúscula la primera letra de cada palabra
              onChanged: (value) {
                // Esto es el valor del input
                print('value: $value');
              },
              validator: (value) {
                if (value!.length < 3) {
                  return 'Mínimo 3 caracteres';
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  hintText: 'Nombre y Apellidos',
                  labelText: 'Nombre y Apellidos',
                  helperText: 'Sólo letras'),
            )
          ],
        ),
      ),
    );
  }
}
