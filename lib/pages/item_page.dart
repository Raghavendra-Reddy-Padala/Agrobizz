
import 'package:farmco/models/food.dart';
import 'package:farmco/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatefulWidget {
  final Fruits fruits;
  final Map<Addon,bool>selectedAddons={};
   ItemPage({super.key,required this.fruits}){
//initially selected addons to be false
for(Addon addon in fruits.availableaddons){
  selectedAddons[addon]=false;
}
   }

  @override
  State<ItemPage> createState() => _ItemPageState();
}


class _ItemPageState extends State<ItemPage> {
  //method to add to cart
  void addToCart(Fruits fruits,Map<Addon,bool>selectedAddons){
    //close the current page
    Navigator.pop(context);
    List<Addon>currentlySelectedAddons=[];
    for(Addon addon in widget.fruits.availableaddons){
      if(widget.selectedAddons[addon]==true){
        currentlySelectedAddons.add(addon);
        showDialog(
          context: context,
           builder: (BuildContext context){
return AlertDialog(
title: const Text("Added"),
content: const Text("Edibile Added To Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
actions: <Widget>[
   TextButton(
            child: const Text('OK',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
            onPressed: () {
              Navigator.of(context).pop(); // Closes the dialog
            },
          ),
],

);
           });
        
  
        
      }
    }
    context.read<Shop>().addToCart(fruits, currentlySelectedAddons);
      }
   Addon? _selectedAddon; // Track the selected addon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text("P R O D U C T",style: TextStyle(color: Colors.blue),),centerTitle: true,),
body:     SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Column(
    
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //foodimage
          Image.asset(widget.fruits.imagePath,height: 300,width: 500,),
          //food name
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(widget.fruits.name,style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('₹${widget.fruits.price}',style:const  TextStyle(fontSize: 15),),
          ),
          const SizedBox(
            height: 10,
          ),
          //food descrition
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(widget.fruits.description,style:const  TextStyle(fontSize: 18),),
          ),
           const SizedBox(
            height: 10,
          ),
          Divider(color: Theme.of(context).colorScheme.inversePrimary,),
       const    Padding(
            padding:  EdgeInsets.only(left: 15),
            child: Text("Weight-Price",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.blue),),
          ),
          const SizedBox(
            height: 10,
          ),
          //weights
         Container(
          decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.inversePrimary)
          ),
           child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding:EdgeInsets.zero ,
              itemCount: widget.fruits.availableaddons.length,
              itemBuilder: (context, index) {
                //get individual addon
                Addon addon=widget.fruits.availableaddons[index];

                // return CheckboxListTile(
                //   title: Text(addon.weight,style:const  TextStyle(fontWeight: FontWeight.bold),),
                //   subtitle: Text("₹${addon.price}",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                //   value: widget.selectedAddons[addon], onChanged: (bool? value){
                //     setState(() {
                //       widget.selectedAddons[addon]=value!;
                //     });
                //   });
                return RadioListTile<Addon>(
                  title: Text(addon.weight, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("₹${addon.price}", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
                  value: addon,
                  groupValue: _selectedAddon, // Track the selected addon
                  onChanged: (Addon? value) {
                    setState(() {
                        _selectedAddon = value;
                        // Update all selected addons to false except the selected one
                        widget.selectedAddons.updateAll(
                            (key, val) => key == _selectedAddon);
                    });
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                );

              },
            ),
         ),
         const SizedBox(height: 20,),
          Container(
      width:double.infinity ,
      height: 70,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary, borderRadius: BorderRadius.circular(60)),
      child: MaterialButton(
        onPressed: ()=>addToCart(widget.fruits,widget.selectedAddons),
        child: Text(
          "ADD  TO CART",
          style:
               TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold),
        ),
      ),
    ),
             const SizedBox(height: 20,),

        ],
        
      ),
),
    );
  }
}