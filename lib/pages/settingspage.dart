import 'package:farmco/themes/themeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:  const Text("S E T T I N G S",)),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12)
            ),
            margin: const EdgeInsets.only(left: 25,top:25,right: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                //dark mode
              const   Text("Dark Mode",style: TextStyle(fontWeight: FontWeight.bold),),
              const Spacer(),
                //switch
                CupertinoSwitch(
                  value: Provider.of<Themeprovider>(context,listen:false).isDarkMode, onChanged: (value)=>
                  Provider.of<Themeprovider>(context,listen: false).toggleTheme(),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}