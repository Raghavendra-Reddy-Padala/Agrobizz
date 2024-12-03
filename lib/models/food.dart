class Fruits{
  final String name;
    final String description;
  final String imagePath;
  final double price;
  final FruitCategory category;
  List<Addon> availableaddons;


  Fruits({
    required this.description,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableaddons
  });
}
//food categoriees
enum FruitCategory{
  Vegetables,
    Fruits,
    Dairyproducts,
  Staplefood,
  Nutsdryfruits,
  
}
//weight addon
class Addon{
  String weight;
  double price;
  Addon({
required this.price,
required this.weight
  });
    
  

}