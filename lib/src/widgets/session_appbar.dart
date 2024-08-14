import 'package:flutter/material.dart';

class SessionAppbar extends StatelessWidget {
  const SessionAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text("ListView Session"),
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
      centerTitle: true,
    );
  }
}
