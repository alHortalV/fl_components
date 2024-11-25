import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = const Color.fromRGBO(81, 118, 135, 1);

  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
              // Tener cuidado si se pone un borderRadius y se deja fuera el color. Hay que ponerlo dentro
              color: _color,
              borderRadius:
                  _borderRadius), //BorderRadius para el container y para el botón BorderRadiusDirectional
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle),
        onPressed: () {
          _width = 200;
          _height = 200;
          setState(() {
            _width = Random().nextDouble() * 500;
            _height = Random().nextDouble() * 500;
            _color = Color.fromRGBO(
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextDouble() * 1);
          });
        },
      ),
    );
  }
}
