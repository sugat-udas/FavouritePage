class Food {
  final String name;
  final int price;
  final String imgPath;
  final bool isVeg;
  final String unit;
  final bool liked;



  Food({this.name, this.price, this.imgPath, this.isVeg, this.unit,this.liked});

  static final  foods = [
    Food(
        name: "Fish Fry",
        price: 250,
        imgPath: 'assets/fishfry.png',
        isVeg: false,
        unit: "per kg",
        liked: true,
        ),
    Food(
        name: "Banan Sandwich",
        price: 120,
        imgPath: 'assets/bananasandwich.png',
        isVeg: true,
        unit: "per plate",
       liked: true,
        ),
    Food(
        name: "Chicken Burger",
        price: 250,
        imgPath: 'assets/chickenburger.png',
        isVeg: false,
        unit: "per plate",
        liked: true,
        ),
    Food(
        name: "Strawberry Popsicle",
        price: 80,
        imgPath: 'assets/strawberrypopsicle.png',
        isVeg: true,
        unit: "piece",
        liked: true,
        ),
  ];
}
