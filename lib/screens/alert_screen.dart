import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: Text('AlertScreen'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context)));
  }
}
