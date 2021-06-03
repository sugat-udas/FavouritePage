import 'package:favourite_page/favouriteListContainer.dart';
import 'package:favourite_page/favouritePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>FavouriteListController()),

    ],
    child: MyApp(),)

  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite"),),
      body:
       Center(child: Container(
         padding: EdgeInsets.only(left: 20.0,right: 20.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
          elevation: 5.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Favourite",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              Icon(Icons.favorite,color: Colors.red,)
            ],
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>FavouritePage(),));
          },
        )
        ,
      )),
    );
  }
}


