import 'package:flutter/material.dart';
class FavouriteListController extends ChangeNotifier{


  changeFavouriteType(int index){
   itemFavouriteType[index]=!itemFavouriteType[index];

    notifyListeners();
  }
  List itemHeadList=[
    "Fish Fry",
    "Banana Sandwich",
    "Chicken Burger",
    "Strawberry Popsicle"
  ];
  List itemFavouriteType=[
    true,false,true,false
  ];
  List itemSubtitleList=[
    "Rs.250/per kg",
    "Rs.150/per plate",
    "Rs.250/per plate",
    "Rs.80/per peice"
  ];

}