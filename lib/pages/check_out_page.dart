import 'package:farmco/pages/delevery_progress_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage
  ({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  GlobalKey<FormState>formKey=GlobalKey<FormState>();
  String cardNumber="";
  String expiryDate="";
  String cardHolderName="";
  String cvvCode="";
  bool isCvvFocus= false;
  //user wants to pay
  void userTapped(){
    if(formKey.currentState!.validate()){
      //only show dailog if form is valid
      showDialog(context: context, builder: (context)=> AlertDialog(
          title:const  Text("Confirm Paymet"),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text("Card Number: $cardNumber"),
              Text("Expiry Date: $expiryDate"),
              Text("Card Holder Name: $cardHolderName"),
              Text("CVV: $cvvCode"),

            ],),
          ),
          actions: [
            //cancel button
            TextButton(onPressed: ()=>Navigator.pop(context)
             ,child:const Text("Cancel",style: TextStyle(color: Colors.red),)),

             //yes button
               TextButton(onPressed: (){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const DeleveryProgressPage()));}
             ,child:const Text("Yes",style: TextStyle(color: Colors.blue),))

          ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
      
        title:const  Text("Check-Out"),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          //credit card
          CreditCardWidget(cardNumber:cardNumber , 
          expiryDate: expiryDate, cardHolderName: cardHolderName,
           cvvCode: cvvCode, showBackView: isCvvFocus, onCreditCardWidgetChange: (p0){},
           ),
           CreditCardForm(cardNumber: cardNumber,
            expiryDate: expiryDate,
             cardHolderName: cardHolderName,
              cvvCode: cvvCode,
               onCreditCardModelChange: (data){
                setState(() {
                  cardNumber=data.cardNumber;
                  expiryDate=data.expiryDate;
                  cardHolderName=data.cardHolderName;
                  cvvCode=data.cvvCode;
                });
               },
                formKey: formKey,
            ),
            const SizedBox(
              height: 50,
            ),
             Container(
      padding:const  EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: userTapped,
        child:  Text(
          "PAY NOW",
          style:
               TextStyle(color: Theme.of(context).colorScheme.tertiary, fontWeight: FontWeight.bold),
        ),
      ),
    ),
          ],
        ),
      ),
    );
  }
}