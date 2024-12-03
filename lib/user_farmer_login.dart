import 'package:farmco/pages/farmerpage.dart';
import 'package:farmco/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UserFarmer extends StatelessWidget {
  const UserFarmer({super.key});

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

    return  Scaffold(

      backgroundColor:Theme.of(context).colorScheme.surface ,
      appBar:AppBar(
        title:const  Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //  SizedBox(
          //   width: screenWidth,
          //   height: 400,
          //   child: LottieBuilder.network("https://lottie.host/a918670f-04c9-4ff4-b7fb-f6cca82f5d3a/qUWtu1g6Td.json"),
          // ),
         const  Text("Who Are You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ),),
          const Spacer(),
          Container(
            width: screenWidth,
                padding:const  EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius:const BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Colors.red[300]
                ),
            child: Column(
              children: [
              const  Text("Choose Your Specific Login Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                   Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                     padding:const  EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),   
                      color: Colors.yellow
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const   Farmerpage();}
                        ));}
                      , child:const  Text("Farmers login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)))),
                ),
                        const Spacer(),
                
                Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        padding:const  EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),   
                          color: Colors.yellow
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const LoginPage();
                                }));
                        }, child:const  Text("Customer login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
       
        ],
        
        ),
      ),
      
    );
  }
}