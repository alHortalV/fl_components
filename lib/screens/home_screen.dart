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
            // El context aLmacena información y se utiliza para intercambiar información entre un widget y otro
            leading: const Icon(Icons.accessibility_new_outlined),
            title: const Text("Nombre de ruta"),
            onTap: () {
              Navigator.pushNamed(context, "card");
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 5,
        ));
  }
}
