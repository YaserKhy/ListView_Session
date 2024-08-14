import 'package:flutter/material.dart';

class ColumnExample extends StatefulWidget {
  const ColumnExample({super.key});

  @override
  State<ColumnExample> createState() => _ColumnExampleState();
}

class _ColumnExampleState extends State<ColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: List.generate(50, (index) {
        return Text("data $index");
      })),
    );
  }
}
