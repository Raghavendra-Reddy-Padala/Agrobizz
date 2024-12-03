

import "package:collection/collection.dart";
import "package:farmco/models/cart_item.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";

import  "food.dart";
class Shop extends ChangeNotifier{
final List<Fruits>_menu=[
//vegetables
Fruits(description: "Tasty Tangy Tomato", name: "Tomato", imagePath:"lib/assests2/vegetables/tomatoes.jpeg" , price: 20, category: FruitCategory.Vegetables, availableaddons:[Addon(price: 40, weight: "2KG"),
Addon(price: 50, weight: "3KG"),
Addon(price: 70, weight: "5KG")
] 
),
Fruits(description: "Tasty Tasty potatoes", name: "Potatoes", imagePath:"lib/assests2/vegetables/potatoes.jpeg" , price: 20, category: FruitCategory.Vegetables, availableaddons:[Addon(price: 40, weight: "2KG"),
Addon(price: 50, weight: "3KG"),
Addon(price: 70, weight: "5KG")
] 
),
Fruits(description: "Tasty Tasty cabbage", name: "cabbage", imagePath:"lib/assests2/vegetables/cabbage.jpeg" , price: 20, category: FruitCategory.Vegetables, availableaddons:[Addon(price: 40, weight: "2KG"),
Addon(price: 50, weight: "3KG"),
Addon(price: 70, weight: "5KG")
] 
),
Fruits(description: "Tasty Tasty LadiesFinger", name: "LadiesFinger", imagePath:"lib/assests2/vegetables/ladiesfinger.jpeg" , price: 20, category: FruitCategory.Vegetables, availableaddons:[Addon(price: 40, weight: "2KG"),
Addon(price: 50, weight: "3KG"),
Addon(price: 70, weight: "5KG")
] 
),
Fruits(description: "Tasty Tasty Mirchi", name: "Mirchi", imagePath:"lib/assests2/vegetables/mirchi.jpeg" , price: 20, category: FruitCategory.Vegetables, availableaddons:[Addon(price: 40, weight: "2KG"),
Addon(price: 50, weight: "3KG"),
Addon(price: 70, weight: "5KG")
] 
),

//fruits
Fruits(description: 'Juciy and sweet apple', name: "Apple", imagePath: "lib/assests2/fruits/apple.jpeg", price: 10, category: FruitCategory.Fruits, availableaddons: [Addon(price: 180, weight: '2KG'),
Addon(price: 250, weight: "3kg"),
Addon(price: 400, weight: '5kg')
]),
Fruits(description: 'Juciy and sweet Banana', name: "Grapes", imagePath: "lib/assests2/fruits/grapes.jpeg", price: 10, category: FruitCategory.Fruits, availableaddons: [Addon(price: 180, weight: '2KG'),
Addon(price: 250, weight: "3kg"),
Addon(price: 400, weight: '5kg')
]),
Fruits(description: 'Tasty Tasty Jackfruit', name: "Jackfruit", imagePath: "lib/assests2/fruits/jackrfrit.jpeg", price: 10, category: FruitCategory.Fruits, availableaddons: [Addon(price: 180, weight: '2KG'),
Addon(price: 250, weight: "3kg"),
Addon(price: 400, weight: '5kg')
]),
Fruits(description: 'Juciy and sweet Mango', name: "Mango", imagePath: "lib/assests2/fruits/mango1.jpeg", price: 10, category: FruitCategory.Fruits, availableaddons: [Addon(price: 180, weight: '2KG'),
Addon(price: 250, weight: "3kg"),
Addon(price: 400, weight: '5kg')
]),
Fruits(description: 'Juciy and swetyy papaya', name: "Papaya", imagePath: "lib/assests2/fruits/papaya.jpeg", price: 10, category: FruitCategory.Fruits, availableaddons: [Addon(price: 180, weight: '2KG'),
Addon(price: 250, weight: "3kg"),
Addon(price: 400, weight: '5kg')
]),
//dairy
Fruits(description: "Healty choice paddy", name: 'Rice', imagePath: 'lib/assests2/staple/rice.jpeg', price: 60, category: FruitCategory.Staplefood, availableaddons: [Addon(price: 500, weight: "15kg"),
Addon(price: 900, weight: '20kg'),
Addon(price: 1150, weight: '25kg')
]
),
Fruits(description: "Fiber Filled Corn", name: 'Corn', imagePath: 'lib/assests2/staple/corn.jpeg', price: 30, category: FruitCategory.Staplefood, availableaddons: [Addon(price: 500, weight: "15kg"),
Addon(price: 900, weight: '20kg'),
Addon(price: 1150, weight: '25kg')
]
),
Fruits(description: "Nutrious Wheat", name: 'Wheat', imagePath: 'lib/assests2/staple/wheat.jpeg', price: 60, category: FruitCategory.Staplefood, availableaddons: [Addon(price: 500, weight: "15kg"),
Addon(price: 900, weight: '20kg'),
Addon(price: 1150, weight: '25kg')
]
),
// //staple
Fruits(description: "Healty Milk", name: "Milk", imagePath: "lib/assests2/dairy/milk.jpeg", price: 35, category: FruitCategory.Dairyproducts, availableaddons: [Addon(price: 60, weight: "1LT")]),
Fruits(description: "Tasty Panner", name: "Panner", imagePath: "lib/assests2/dairy/paneer.jpeg", price: 100, category: FruitCategory.Dairyproducts, availableaddons: [Addon(price: 150, weight: "1kg")]),
Fruits(description: "Healty Bread", name: "Bread", imagePath: "lib/assests2/dairy/bread.jpeg", price: 35, category: FruitCategory.Dairyproducts, availableaddons: [Addon(price: 60, weight: "1LT")]),
Fruits(description: "Healty Curd", name: "Curd", imagePath: "lib/assests2/dairy/curd.jpeg", price: 35, category: FruitCategory.Dairyproducts, availableaddons: [Addon(price: 60, weight: "1LT")]),
// nuts
Fruits(description: "Goody Almonds", name: "Amonds", imagePath:"lib/assests2/nuts/almonds.jpeg" , price: 600, category: FruitCategory.Nutsdryfruits, availableaddons: [Addon(price: 1000, weight: "2kg"),Addon(price: 1500, weight: "3KG"),Addon(price: 2000, weight: "4KG") ]),
Fruits(description: "Goody Cashews", name: "Cashews", imagePath:"lib/assests2/nuts/cashew.jpeg" , price: 600, category: FruitCategory.Nutsdryfruits, availableaddons: [Addon(price: 1000, weight: "2kg"),Addon(price: 1500, weight: "3KG"),Addon(price: 2000, weight: "4KG") ])
,Fruits(description: "ALL MIX NUTS", name: "ALLMIX", imagePath:"lib/assests2/nuts/all mix nuts.jpeg" , price: 600, category: FruitCategory.Nutsdryfruits, availableaddons: [Addon(price: 1000, weight: "2kg"),Addon(price: 1500, weight: "3KG"),Addon(price: 2000, weight: "4KG") ])

  ];
String _deliveryadress="Iare main gate";

//GETTTERS
List<Fruits> get menu =>_menu;
List<CartItem>get cart=>_cart;
String get  deliveryadress =>_deliveryadress;

/*
OPERATORS
*/
//usercart
List<CartItem>_cart=[];


//add to cart
void addToCart(Fruits fruit,List<Addon>selectedAddons){
  //see if there is a cart item already with the same food
  CartItem? cartItem=_cart.firstWhereOrNull((item){
    //checl if the food items are same
    bool isSameFruit=item.product==fruit;

    //chekc if the list of sleected addon are same
    bool isSameAddon=ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameFruit&&isSameAddon;

  });
  //if item already exist increase its quantity
  if(cartItem!=null){
    cartItem.quantity++;

  }
  //otherwise add a new cart item to the cart
  else{
    _cart.add(
      CartItem(product:fruit,
      selectedAddons:selectedAddons
      )
    );
  }
  notifyListeners();
}


//remove from the cart
void removeFromCart(CartItem cartItem){
int cartIndex=_cart.indexOf(cartItem);
if(cartItem!=1){
  if(_cart[cartIndex].quantity>1){
    _cart[cartIndex].quantity--;
  }else{
    _cart.removeAt(cartIndex);
  }
}
notifyListeners();
}
//get the total price form cart
double getTotalPrice(){
  double total=0.0;
  for(CartItem cartItem in _cart){
    double itemTotal=cartItem.product.price;
    for(Addon addon in cartItem.selectedAddons){
  itemTotal+=addon.price;
    }
    total+=itemTotal*cartItem.quantity;
  }
  return total;
}

//ge total no of items in the cart
int geTotalItemCount(){
  int totalItemCount=0;
  for(CartItem cartItem in _cart){
    totalItemCount+=cartItem.quantity;
  }
  return totalItemCount;
}
//clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}
void updatedeliveradress(String newadress){
  _deliveryadress=newadress;
  notifyListeners();
}

//helpers
//genterate a receipt
String displayCartReceipt(){
final receipt=StringBuffer();
receipt.writeln("Here Is Your Bill....");
receipt.writeln();

//format the date to include up to sconds only
String formatedDate=DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
receipt.writeln(formatedDate);
receipt.writeln();
receipt.writeln("               ----------               ");
for(final CartItem in _cart){
  receipt.writeln("${CartItem.quantity} x ${CartItem.product.name}-${_formatPrice(CartItem.product.price)}");
  if(CartItem.selectedAddons.isNotEmpty){
    receipt.writeln("Weights:${_foratAddons(CartItem.selectedAddons)}");
  }
  receipt.writeln();
}
receipt.writeln("               ----------               ");
receipt.writeln();
receipt.writeln("Total Items: ${geTotalItemCount()}");
receipt.writeln("Total Price :${_formatPrice(getTotalPrice())}");

return receipt.toString();

}

//formate double value to money 
String _formatPrice(double price){
return "₹${price.toStringAsFixed(2)}";
}
//formate list addonts into a string summary
String _foratAddons(List<Addon>addon){
  return addon.map((addon)=>"${addon.weight} (${_formatPrice(addon.price)})").join(", ");
}

}