import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  final String imageUrl;
  final String? textUrl;
  const CustomCardTipo2({super.key, required this.imageUrl, this.textUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior:
            Clip.antiAlias, //Si algo se sale del container, se cortará
        shape: RoundedRectangleBorder(
          // Para poner los bordes redondeados según tu quieras
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            FadeInImage(
              // image: NetworkImage("https://img.goodfon.com/original/1920x1080/b/69/starkiller-by-sidezeo-star-wars-fog-sith-startroopers-weapon.jpg"),
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage("assets/jar-loading.gif"),
              width: double.infinity, //Ocupa todo el ancho posible
              height: 260,
              fit: BoxFit.cover, // La relación aspecto sigue igual
              fadeInDuration: const Duration(
                  milliseconds: 3000), // La duración del desvanecimiento
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(textUrl ?? '??'),
            ),
          ],
        ));
  }
}
