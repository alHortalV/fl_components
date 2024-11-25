import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color secondary = Theme.of(context).secondaryHeaderColor;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: secondary,
              child: const Text("AH", style: TextStyle(color: Colors.black87)),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('AvatarScreen'),
      ),
    );
  }
}
