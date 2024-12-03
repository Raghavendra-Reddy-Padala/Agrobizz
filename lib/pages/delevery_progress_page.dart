import 'package:farmco/auth/storage/authstorage.dart';
import 'package:farmco/components/my_receipt.dart';
import 'package:farmco/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeleveryProgressPage extends StatefulWidget {
  const DeleveryProgressPage({super.key});

  @override
  State<DeleveryProgressPage> createState() => _DeleveryProgressPageState();
}

class _DeleveryProgressPageState extends State<DeleveryProgressPage> {
  //get acces to db
  FireStoreService db = FireStoreService();
  @override
  void initState(){
    super.initState();

    String receipt=context.read<Shop>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const  Text("Delivery Progress"),
        centerTitle: true,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: const  Center(
          child:  MyReceipt(),
        ),
      ),
    );
  }

  //custom boottom nav bar
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        )
      ),
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          //profile pic
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: (){}, icon:const Icon(Icons.person,color: Colors.blueGrey,)),
          ),
          const SizedBox(width: 10,),
          //driver details
        const   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Jithu",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
              Text("Delevery Partner",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,),)
            ],
          ),
          const Spacer(),
          Row(
            children: [
              //messgae buuton
              Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.blue,)),
          ),
const SizedBox(width: 10,),
              //call butoon
              Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: (){}, icon:const Icon(Icons.call,color: Colors.green,)),
          ),

            ],
          )
      
        ],
      ),
    ),
    );
  }
}