import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String name;

  final  Function()? onPressed;
  const Mybutton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      child: TextButton(
        onPressed: () {
          onPressed;
        },
        child: Text(
          name,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
