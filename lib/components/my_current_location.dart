import 'package:farmco/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
   MyCurrentLocation({super.key});

final   textcontroller = TextEditingController();
  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title:const  Text("Your Location"),
      content:  TextField(
        controller: textcontroller,
        decoration:const InputDecoration(
          hintText: "Enter the Adress..."
        ),
      ),
      actions: [
        //cancel button
        MaterialButton(onPressed: ()=>Navigator.pop(context),
        child: const Text("Cancel"),
        ),
        //save button
        MaterialButton(onPressed: (){
          String newadress=textcontroller.text;
          context.read<Shop>().updatedeliveradress(newadress);
          Navigator.pop(context);
        },
        child: const Text("Save"),),
        
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delever To",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold)),
          GestureDetector(
            onTap:()=>
             openLocationSearchBox(context),
            child: Row(
              children: [
               Consumer<Shop>(builder: (context,shop,child)=> 
               Text(shop.deliveryadress,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
               
               ),
                //drop down menu
               const Icon(Icons.arrow_downward),
              ],
              //
            ),
          )
        ],
      ),
    );
  }
}