import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget target;
  final String text;
  const MyButton({super.key, required this.target, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return target;
          }));
        },
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.teal)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}
