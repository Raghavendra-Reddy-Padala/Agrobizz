import 'package:farmco/components/my_cart_tile.dart';
import 'package:farmco/models/shop.dart';
import 'package:farmco/pages/check_out_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, shop, child) {
      //cart
      final userCart=shop.cart;

      //scafold ui
      return Scaffold(
appBar:AppBar(
  actions: [
    IconButton(onPressed: (){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title:const  Text("Deletion Alert"),
        content:const  Text("Are You Sure Do You Wanna Clear Cart"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
            shop.clearCart();
          }, child: const Text("Yes",style: TextStyle(color: Colors.red),)
          ),
          TextButton(onPressed:()=>Navigator.pop(context) , child: const Text("No",style: TextStyle(color: Colors.blue),))
        ],
        
      ));
    }, icon:const  Icon(Icons.delete))
  ],
  title:const Text("C A R T"),
  centerTitle: true,
  backgroundColor: Colors.transparent,
  foregroundColor: Theme.of(context).colorScheme.inversePrimary,
),
body: Column(
  children: [
    //list of cart
    Expanded(
      child: Column(
        children: [
         userCart.isEmpty?const Expanded(child: Center(child:  Text("YOUR CART IS EMPTY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),))) :Expanded(child: ListView.builder(
            itemCount: userCart.length,
            itemBuilder: (context,index){
              final cartitem =userCart[index];
              //return cart tile ui
              return MyCartTile(cartItem: cartitem);
            }
          )
          )
        ],
      ),
    ),

    //button t pay
     Container(
      padding:const  EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(
            builder:(context) =>const  CheckOutPage())
            );
        },
        child:  Text(
          "CHECK OUT",
          style:
               TextStyle(color: Theme.of(context).colorScheme.tertiary, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    const SizedBox(height: 20,)
  ],
),
      );
    },
    );
  }
}