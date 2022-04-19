import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        margin: new EdgeInsets.only(top: 10,bottom: 10),
        child:Column(
          children: [
            MyStatelessWidget("Bath","",),
            MyStatelessWidget("Baby Cloth laundry",""),
            TextButton(style: TextButton.styleFrom(
              primary: Colors.blueAccent,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),onPressed: (){}, child: Text("Order"))
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  String txt1;
  String txt2;
   MyStatelessWidget(this.txt1,this.txt2)

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(

        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text(this.txt1),
            // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}