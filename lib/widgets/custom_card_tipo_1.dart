import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("Título de la tarjeta"),
            subtitle: Text(
                "Reprehenderit do eu aliquip velit elit magna minim commodo consequat do. Duis ullamco fugiat cupidatat magna nostrud incididunt pariatur duis pariatur aute aute mollit. Anim commodo sit cupidatat aliquip veniam ipsum mollit nulla aute Lorem elit culpa sunt. Ea velit voluptate occaecat consectetur officia fugiat occaecat duis commodo. Amet duis cupidatat aute ut officia voluptate laborum minim qui sunt. Laboris tempor et amet est est cupidatat dolor esse consectetur."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text("Cancelar")),
              TextButton(onPressed: () {}, child: const Text("Aceptar"))
            ],
          )
        ],
      ),
    );
  }
}
