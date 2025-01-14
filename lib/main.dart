import 'package:flutter/material.dart';
import 'package:listview_session/src/screens/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcome()
    );
  }
}
