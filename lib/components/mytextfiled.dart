import 'package:flutter/material.dart';

class Mytextfiled extends StatelessWidget {
  final TextEditingController controller;
  final bool obsuretext;
  final String hinttext;
  const Mytextfiled({super.key,
  required this.controller,
  required this.obsuretext,
  required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obsuretext,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
          ),
          hintText: hinttext,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
        ),
      ),
    );
  }
}