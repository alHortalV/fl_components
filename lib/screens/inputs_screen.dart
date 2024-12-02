import 'package:fl_componentes/widgets/widget.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'nombre': 'Andrés',
      'apellido': 'Iniesta',
      'email': 'iniesta@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        // Poder hacer scroll hacia arriba y hacia abajo si ocupa más de la pantalla el contenido
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "Nombre",
                labelText: "Nombre",
                helperText: "Solo letras",
                capitalization: TextCapitalization.words,
                icon: Icons.verified_user,
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: "Apellidos",
                labelText: "Apellidos",
                capitalization: TextCapitalization.words,
                icon: Icons.verified_user,
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'apellidos',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: "E-mail",
                labelText: "E-mail",
                icon: Icons.verified_user,
                suffixIcon: Icons.mail,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                capitalization: TextCapitalization.none,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: "Contraseña",
                labelText: "Contraseña",
                helperText: "Mínimo 6 palabras",
                icon: Icons.verified_user,
                suffixIcon: Icons.lock,
                obscureText: true,
                capitalization: TextCapitalization.none,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no válido');
                          return;
                        } else {
                          print('Formulario válido');
                          return;
                        }
                      },
                      child: const Text("Enviar")))
            ],
          ),
        ),
      ),
    );
  }
}
