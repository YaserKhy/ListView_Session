import 'package:flutter/material.dart';
import 'package:listview_session/src/widgets/session_appbar.dart';

class Listview1 extends StatefulWidget {
  const Listview1({super.key});

  @override
  State<Listview1> createState() => _Listview1State();
}

class _Listview1State extends State<Listview1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(1, 55), child: SessionAppbar()),
      body: ListView(
        children: [
          Text("data1"),
          Text("data2"),
          Text("data3"),
          Text("data4"),
          Text("data5"),
        ],
      )
    );
  }
}