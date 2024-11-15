import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior:
            Clip.antiAlias, //Si algo se sale del container, se cortará
        child: Column(
          children: [
            const FadeInImage(
              image: NetworkImage(
                  "https://img.goodfon.com/original/1920x1080/b/69/starkiller-by-sidezeo-star-wars-fog-sith-startroopers-weapon.jpg"),
              placeholder: AssetImage("assets/jar-loading.gif"),
              width: double.infinity, //Ocupa todo el ancho posible
              height: 260,
              fit: BoxFit.cover, // La relación aspecto sigue igual
              fadeInDuration: Duration(
                  milliseconds: 3000), // La duración del desvanecimiento
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: const Text('StarKiller'),
            ),
          ],
        ));
  }
}
