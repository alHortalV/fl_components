import 'package:fl_componentes/widgets/widget.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipo1(),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageUrl:
                    "https://img.goodfon.com/original/1920x1080/b/69/starkiller-by-sidezeo-star-wars-fog-sith-startroopers-weapon.jpg",
                textUrl: 'StarKiller'),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXFResFkDQp4K7JII19mBNV9lAn7SCs6djQ&s",
                textUrl: 'Darth Maul'),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageUrl:
                    "https://images.squarespace-cdn.com/content/v1/5fbc4a62c2150e62cfcb09aa/1654399267221-JRCTJLTTJ4O9VSOH5SHJ/darth-revan-star-wars-closeup.jpg",
                textUrl: 'Darth Revan'),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageUrl:
                    "https://lumiere-a.akamaihd.net/v1/images/darth-vader-main_4560aff7.jpeg?region=0%2C67%2C1280%2C720",
                textUrl: 'Darth Vader'),
            SizedBox(height: 10),
            CustomCardTipo2(
                imageUrl:
                    "https://lumiere-a.akamaihd.net/v1/images/anakin_skywalker_003_fbc652cd.jpeg?region=0,0,1379,809"),
          ]),
    );
  }
}
