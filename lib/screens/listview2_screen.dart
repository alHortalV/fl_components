import 'package:fl_componentes/screens/casa_screen.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ["Jedi", "Sith", "Rebeldes", "Imperiales"];
  final imageUrls = const [
    "https://sm.ign.com/t/ign_es/screenshot/default/every-jedi-ever-4vgs_gq72.1200.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIrvRJt_-lBZWjhNZAYYgpmfubTfn4G4jeLA&s",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Emblem_of_the_Rebel_Alliance.svg/220px-Emblem_of_the_Rebel_Alliance.svg.png",
    "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/02/first-order_8ae2955f.jpeg"
  ];
  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 2"),
        ),
        body: ListView.separated(
            //Separar todas las opciones
            itemBuilder: (context, index) => // Devuelve los items de cada lista
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(options[index]),
                  onTap: () {
                    final casa = options[index];
                    final imageUrl = imageUrls[index];
                    print(casa);
                    Navigator.push(
                      //Envia los datos a Casa Screen
                      context,
                      MaterialPageRoute(
                        builder: (context) => CasaScreen(
                          imageUrl: imageUrl,
                          textUrl: casa,
                        ),
                      ),
                    );
                  },
                ),
            separatorBuilder: (context, index) =>
                const Divider(), // Para dividir los items
            itemCount: options.length // Número de elementos de la lista
            ));
  }
}
