import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: Column(
      children: [
        FadeInImage(
            image: NetworkImage(
                "https://img.goodfon.com/original/1920x1080/b/69/starkiller-by-sidezeo-star-wars-fog-sith-startroopers-weapon.jpg"),
            placeholder: AssetImage("assets/ZKZg.gif"),
            width: double.infinity, //Ocupa todo el ancho posible
            height: 260,
            fit: BoxFit.cover // La relación aspecto sigue igual
            ),
      ],
    ));
  }
}
