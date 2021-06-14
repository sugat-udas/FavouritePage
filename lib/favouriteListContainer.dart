import 'package:flutter/material.dart';
class FavouriteListController extends ChangeNotifier{
bool favouriteFlag=true;

  changeFavouriteFlag(int index){
   favouriteFlag=!favouriteFlag;

    notifyListeners();
  }
}