import 'package:favourite_page/favoriteController.dart';
import 'package:favourite_page/favouriteListContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FavouriteListController _favouriteListController;

  @override
  Widget build(BuildContext context) {
    _favouriteListController = Provider.of<FavouriteListController>(context);
    return ListView.builder(
        itemCount: Food.foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [

              ListMaker(ftext: Food.foods[index].name,isVeg: Food.foods[index].isVeg,price: Food.foods[index].price,unit: Food.foods[index].unit,liked: Food.foods[index].liked,),
              Container(

                  padding: EdgeInsets.only(top: 10.0,left: 8.0),
                  child: Image.asset(Food.foods[index].imgPath,width: 60,height: 60.0,)),
            ],
          );
        });
  }

}

class ListMaker extends StatefulWidget {
  String ftext;
  bool isVeg;
  int price;
  String unit;
  bool liked;
  ListMaker({this.ftext, this.isVeg, this.price, this.unit, this.liked,
});

  @override
  _ListMakerState createState() => _ListMakerState();
}

class _ListMakerState extends State<ListMaker> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0,top: 0.00),
          child: ListTile(
              title: Row(
                children: [
                  CheckVeg(isVeg: widget.isVeg,),
                  SizedBox(width: 8.0,),
                  Text(widget.ftext,style: TextStyle(fontSize: 14.0),),
                ],
              ),
            trailing: GestureDetector(
                child: Icon(
                    Icons.favorite,
                    color: widget.liked==true?
                    Colors.red:
                    Colors.grey),
              onTap: (){
                  setState(() {
                    widget.liked=!widget.liked;
                  });
              },
            ),
            subtitle: Text("Rs. ${widget.price} / ${widget.unit}",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}

class CheckVeg extends StatelessWidget {
  bool isVeg;
  CheckVeg({
    this.isVeg,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
        border: Border.all(color: isVeg==true?Colors.green:Colors.red,)
      ),
      child: Center(
        child: Container(
          height: 6.0,
          width: 6.0,
          color: isVeg==true?Colors.green:Colors.red,
        ),
      ),
    );
  }
}

