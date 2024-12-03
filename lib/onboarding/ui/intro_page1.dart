import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
              child: Lottie.network("https://lottie.host/98412160-230b-4862-a2a2-3c0fea74fc6f/xWH6JAnHAu.json"),
            ),
            Container(
              width: screenWidth,
              margin:const   EdgeInsets.only(top: 20.0), // Vertical margin for the text
              padding:const  EdgeInsets.only(top: 10),// Padding for the text
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
                        text: 'AGROBIZZ\n',
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
                        text: ('Bringing farm-fresh produce directly from farmers to your doorstep, ensuring quality and support for local agriculture.'),
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


