import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreService{
    User? user = FirebaseAuth.instance.currentUser;

  //get collecton of order
  final CollectionReference orders=FirebaseFirestore.instance.collection('orders');

  //save order to dh
  Future< void> saveOrderToDatabase(String receipt)async{
    await orders.add({
      'date':DateTime.now(),
      'order':receipt,
      'UserEmail':user!.email,
      //add more ields as necessaryy...
  });
  }
}