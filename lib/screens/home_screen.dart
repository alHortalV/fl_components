import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de Flutter",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.indigo,
          elevation: 0, //Opcional para sombreado
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.accessibility_new_outlined),
            title: const Text("Nombre de ruta"),
            onTap: () {},
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 5,
        ));
  }
}
