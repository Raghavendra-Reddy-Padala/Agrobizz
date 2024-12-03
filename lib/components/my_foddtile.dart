import 'package:farmco/models/food.dart';
import 'package:flutter/material.dart';

class MyFoddtile extends StatelessWidget {
  final Fruits fruits;
  final void Function()? onTap;
  const MyFoddtile({super.key,required this.fruits,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(fruits.name,style:const  TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                  Text('₹${fruits.price}',style:const  TextStyle(),),
                                  const   SizedBox(height: 10,),

                  Text(fruits.description,style:const  TextStyle(fontWeight: FontWeight.bold),)
                ],
              )
              ),
              //fruit image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(fruits.imagePath,height: 100,)),
            ],
            ),
          )),
          //dividerline
           Divider(color: Theme.of(context).colorScheme.secondary,
           endIndent: 25,
           indent: 25,)
      ],
    );
  }
}