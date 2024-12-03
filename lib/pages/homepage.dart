import 'package:farmco/components/my_current_location.dart';
import 'package:farmco/components/my_foddtile.dart';
import 'package:farmco/components/my_sliverappbar.dart';
import 'package:farmco/components/my_tab_bar.dart';
import 'package:farmco/components/mycard.dart';
import 'package:farmco/components/mydrawer.dart';
import 'package:farmco/models/food.dart';
import 'package:farmco/models/shop.dart';
import 'package:farmco/pages/car_page.dart';
import 'package:farmco/pages/item_page.dart';
import 'package:farmco/pages/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin{
  //tab bar controller
  late TabController _tabController;
   int _selectedIndex = 0;
  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: FruitCategory.values.length, vsync: this);
      }
@override
void dispose(){
  _tabController.dispose();
  super.dispose();
}

 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
        switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()), // Redirect to HomePage
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const Settingspage()), // Redirect to SearchPage
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const CartPage()), // Redirect to ProfilePage
        );
        break;
      
    }
 }
//sort out and return a list of food items that belong to a speical catogery
List<Fruits>_filterMenuByCategory(FruitCategory catogery,List<Fruits>fullMenu){
  return fullMenu.where((fruits)=>fruits.category==catogery).toList();
}
///retrun list of food in given catorgery
List<Widget>getFruitInCatogery(List<Fruits>fullMenu){
  return FruitCategory.values.map((category){
    List<Fruits>categorymenu=_filterMenuByCategory(category, fullMenu);

    return ListView.builder(itemCount: categorymenu.length,physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemBuilder: (context,index){
      //gets individual food
      final fruits=categorymenu[index];
      //return food tile
      return MyFoddtile(fruits: fruits, onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>ItemPage(fruits: fruits))));
    }
    );
  }).toList();
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      drawer:const  Mydrawer(),
      body: NestedScrollView(headerSliverBuilder: (context,innerBoxIsScrolled)=>[
         MySliverappbar(
        title:MyTabBar(tabController:_tabController ),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
             children: [
                               Mycard(lottie: "https://lottie.host/17dcfc4e-4048-4d93-8235-8d2f649b4b8c/EKWPLVHrDs.json", label: "Get Fresh Fruits And Vegies \nRight From Farm to home!"),
                 Mycard(lottie: "https://lottie.host/ce6132ce-2422-4b9f-a5fe-ae8bf773f524/hz2A8WAsiv.json", label: "Stay Uptaded On with Every Single Deal!"),
                 Mycard(lottie: "https://lottie.host/9c54c9bc-ca81-453d-9b2c-61b913cea8cb/JQsUZco7IZ.json", label: "Delivery Right From Our Trusted Agents!"),
                                 

                          
           
             ],
           ),
         ),
         
         
          Divider(indent: 25,endIndent: 25,
          color: Theme.of(context).colorScheme.secondary,
          ),
          //my curr loaction
           MyCurrentLocation()
        ],
      
       ),
        )
      ], body:Consumer<Shop>(builder: (context, shop, child) =>
       TabBarView(
        controller: _tabController,
        children: getFruitInCatogery(shop.menu)
      
      ),)
    
       ),
           bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );   
  }
}