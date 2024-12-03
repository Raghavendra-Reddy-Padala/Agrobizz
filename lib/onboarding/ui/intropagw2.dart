import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intropage2 extends StatelessWidget {
  const Intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Wrap the Image.asset in a Container to control its width and fit
            SizedBox(
              width: screenWidth, // Set the width to screen width
              height: 420, // Set the fixed height to 450 pixels
              child: Image.asset("travel_pool/assets/intro2.jpeg")
            ),
            
  Container(
              width: screenWidth,
              margin:const  EdgeInsets.only(top: 20.0), // Vertical margin for the text
              padding:const  EdgeInsets.only(top: 10), // Padding for the text
              child: Container(
                width: screenWidth,
                padding:const  EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius:const BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Colors.grey[300]
                ),
                child: RichText(
                  textAlign: TextAlign.start,
                  text:const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Fast and Seamless Delivery\n',
                        
                        style: TextStyle(
                          fontSize: 22, // Larger font size for the title
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Color for the title
                        ),
                        
                      ),
                      TextSpan(
                        text: ("\n")
                      ),
                      TextSpan(
                        text: ('Quick and efficient delivery of farm-fresh goods, guaranteeing you the best quality and taste.'),
                        style: TextStyle(
                          fontSize: 16, // Smaller font size for the description
                          fontWeight: FontWeight.normal,
                          color: Colors.black, // Slightly lighter color for description
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

