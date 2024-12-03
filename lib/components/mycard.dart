import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Mycard extends StatelessWidget {
  final String lottie;
  final String label;
  const Mycard
  ({super.key,
  required this.lottie,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
                          elevation: 10,
                          child: Container(
                            height: 250,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                              Container(
                                decoration:const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Lottie.network(lottie,height: 180)),
                                const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(label,style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                ],
                              )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
        // Card(
        //                   elevation: 10,
        //                   child: Container(
        //                     height: 250,
        //                     width: 250,
        //                     decoration: BoxDecoration(
        //                       color: Colors.pink[100],
        //                       borderRadius: BorderRadius.circular(12),
        //                     ),
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Text(label,style:const TextStyle(fontSize: 16,
        //                         fontWeight: FontWeight.bold
        //                         ),
        //                         maxLines: 1,
        //                         overflow: TextOverflow.ellipsis,
        //                         ),
        //                          const SizedBox(height: 8,),
        //                         Icon(icon,size: 32,),
        //                         const SizedBox(height: 8,),
        //                          Text(value,style: 
        //                         const TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   width: 20,
        //                 ),
        //     Card(
        //                   elevation: 10,
        //                   child: Container(
        //                     height: 250,
        //                     width: 250,
        //                     decoration: BoxDecoration(
        //                       color: Colors.pink[100],
        //                       borderRadius: BorderRadius.circular(12),
        //                     ),
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Text(label,style:const TextStyle(fontSize: 16,
        //                         fontWeight: FontWeight.bold
        //                         ),
        //                         maxLines: 1,
        //                         overflow: TextOverflow.ellipsis,
        //                         ),
        //                          const SizedBox(height: 8,),
        //                         Icon(icon,size: 32,),
        //                         const SizedBox(height: 8,),
        //                          Text(value,style: 
        //                         const TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   width: 20,
        //                 ),
        //                 Card(
        //                   elevation: 10,
        //                   child: Container(
        //                     height: 250,
        //                     width: 250,
        //                     decoration: BoxDecoration(
        //                       color: Colors.pink[100],
        //                       borderRadius: BorderRadius.circular(12),
        //                     ),
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Column(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Text(label,style:const TextStyle(fontSize: 16,
        //                         fontWeight: FontWeight.bold
        //                         ),
        //                         maxLines: 1,
        //                         overflow: TextOverflow.ellipsis,
        //                         ),
        //                          const SizedBox(height: 8,),
        //                         Icon(icon,size: 32,),
        //                         const SizedBox(height: 8,),
        //                          Text(value,style: 
        //                         const TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                 ),
      ],
    );
  }
}
