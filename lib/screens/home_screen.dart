import 'package:fl_componentes/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de Flutter",
              style: TextStyle(color: Colors.white)),
          //backgroundColor: Colors.indigo,
          elevation: 0, //Opcional para sombreado
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            // El contexto aLmacena información y se utiliza para intercambiar información entre un wdget y otro
            leading: Icon(AppRoutes.menuOptions[index].icon),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.menuOptions.length,
        ));
  }
}
