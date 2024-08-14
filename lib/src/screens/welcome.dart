import 'package:flutter/material.dart';
import 'package:listview_session/src/screens/column_example.dart';
import 'package:listview_session/src/screens/listview1.dart';
import 'package:listview_session/src/screens/listview2.dart';
import 'package:listview_session/src/screens/listview3.dart';
import 'package:listview_session/src/widgets/my_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to", style: TextStyle(letterSpacing: 10,color: Colors.teal, fontSize: 24),),
            Text("ListView session",style: TextStyle(color: Colors.teal, fontSize: 40),),
            SizedBox(height: 100,),
            MyButton(target: ColumnExample(), text:"Column"),
            SizedBox(height: 10,),
            MyButton(target: Listview1(), text:"Normal ListView"),
            SizedBox(height: 10,),
            MyButton(target: Listview2(), text:"Builder ListView"),
            SizedBox(height: 10,),
            MyButton(target: Listview3(), text:"Separated ListView"),
          ]
        ),
      )),
    );
  }
}
