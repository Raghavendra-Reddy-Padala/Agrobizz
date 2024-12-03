import 'package:farmco/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.only(left: 25,right: 25,bottom: 25,top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          const  Text("Thank You For Your Order!",style: TextStyle(fontSize: 18),),
          const SizedBox(
            height: 25,
          ),
            Container(
              decoration: BoxDecoration(
                
                border: Border.all(color:Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(15)
              ),
              padding: const EdgeInsets.all(25),
          //  child:const  Text("Your Bill....",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            child: Consumer<Shop>(builder: (context, shop, child) =>Text(shop.displayCartReceipt(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,),
            ),
            const SizedBox(height: 15,),
            const  Text("Your Delivery WouldBe Done By!",style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}