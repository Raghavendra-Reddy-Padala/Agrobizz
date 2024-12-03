import 'package:farmco/components/drawertile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});


  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
Future<void> logout() async{
  return await FirebaseAuth.instance.signOut();
}
    return  Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: [
          //app logo
          SizedBox(
            width: screenWidth,
            child: Container(
              padding: const EdgeInsets.all(100),
              color: Colors.pink[100],
              child:const Icon(Icons.lock_open_rounded,
              size: 48,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(25.0),
          //   child: Divider(
          //     color: Theme.of(context).colorScheme.secondary,
          //   ),
          // ),
          //home list tile
          const SizedBox(
            height: 15,
          ),
Drawertile(icon: Icons.home, onTap: (){
  Navigator.pop(context);
}, text: "H O M E"),
          //settings list tile
          Drawertile(icon: Icons.favorite, onTap: (){}, text: "F A V"),
          //favorite
         
          //ordeers
       
        //help
        Drawertile(icon: Icons.info, onTap: (){}, text: "A B O U T"),
                Drawertile(icon: Icons.shopping_cart, onTap: (){}, text: "O R D E R S"),

        const Spacer(),
        //logout
        Drawertile(icon: Icons.logout, onTap: ()=>logout(), text: "L O G O U T")
        ],
      ),
    );
  }
}