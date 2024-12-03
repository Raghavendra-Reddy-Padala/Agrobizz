import 'package:flutter/material.dart';

class Farmerpage extends StatelessWidget {
  const Farmerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Farmer Page"),
        centerTitle: true,
      ),
      body: Center(child: Text("You Are Not Eligible To Aceess This Page",style: TextStyle(fontSize: 25),),),
    );
  }
}