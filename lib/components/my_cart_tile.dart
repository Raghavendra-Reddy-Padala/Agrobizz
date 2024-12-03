import 'package:farmco/components/my_quantity.dart';
import 'package:farmco/models/cart_item.dart';
import 'package:farmco/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key,required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return  Consumer<Shop>(
      builder: (context, shop, child) =>
       Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(8)

        ),
        margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //food image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(cartItem.product.imagePath,
                height: 90,
                ),
              ),
              const SizedBox(width: 30,),
                //name ad price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Text(cartItem.product.name),
                        Text('₹${cartItem.product.price.toString()}')
                  ],
                ),
                const Spacer(),
                //increment and decrement qunatity
                MyQuantity(quantity: cartItem.quantity, 
                fruits: cartItem.product, 
                onIncrement:(){
                  shop.addToCart(cartItem.product,cartItem.selectedAddons);
                } , ondecrement: (){
                  shop.removeFromCart(cartItem);
                })
            
              ],
            ),
          ),
          //addons
          SizedBox(
            height: cartItem.selectedAddons.isEmpty? 0 : 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding:const EdgeInsets.only(left: 10,bottom: 10,right: 10) ,
              children:cartItem.selectedAddons
              .map(
                (addon)=>Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Row(
                  children: [
                    //addonname
                    Text(addon.weight),
                  
                    //addon price
                    Text(" (₹${addon.price})")
                            ],
                                ), 
                                shape: StadiumBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary)),
                                onSelected: (value){},
                                backgroundColor: Theme.of(context).colorScheme.secondary,
                                labelStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                                ),
                )).toList(),
            ),
          )
        ],
       ),
       )
    );
  }
}