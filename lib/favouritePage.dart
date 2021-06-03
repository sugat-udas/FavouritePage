
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
    _favouriteListController= Provider.of<FavouriteListController>(context);
    return Container(
      child: ListView.builder(
        itemCount: _favouriteListController.itemHeadList.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: ClipOval(

                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
              ),
              title: Row(
                children: [
                  ColorMaker(index: index,),
                  SizedBox(width: 8.0,),
                  Text(_favouriteListController.itemHeadList[index]),
                ],
              ),
              subtitle: Text(_favouriteListController.itemSubtitleList[index]),

              trailing: _likeBody(index),


            );
          }
      ),
    );
  }
 Widget _likeBody(int index){
    return GestureDetector(
      child: Icon(
        Icons.favorite,


        color: _favouriteListController.itemFavouriteType[index]==true?
        Colors.red
            :Colors.grey
      ),
      onTap: (){
        _favouriteListController.changeFavouriteType(index);
      }
    );
  }
}

class ColorMaker extends StatelessWidget {
  int index;
  ColorMaker({
    this.index
});
  @override
  Widget build(BuildContext context) {
    return
    index.isEven?
        _chooseColor(Colors.red,)
        :_chooseColor(Colors.green);

  }
  Widget _chooseColor(Color color ){
    return Container(
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: color)

      ) ,
      child: Center(
        child: Container(
          width: 6.0,
          height: 6.0,
          color: color,
        ),
      ),
    );
  }
}


