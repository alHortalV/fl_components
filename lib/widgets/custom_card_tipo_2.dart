import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: Column(
      children: [
        Image(
            image: NetworkImage(
                "https://img.goodfon.com/original/1920x1080/b/69/starkiller-by-sidezeo-star-wars-fog-sith-startroopers-weapon.jpg"))
      ],
    ));
  }
}
