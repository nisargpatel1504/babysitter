import 'package:babycare/screens/confirmBooking.dart';
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
            MyStatelessWidget(txt1: "Baby Shower",txt2: "20",),
            MyStatelessWidget(txt1:"Baby Cloth laundry",txt2: "15"),
            TextButton(style: TextButton.styleFrom(
              primary: Colors.blueAccent,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>ConfirmBooking(), ),);
            }, child: Text("Order"))
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
  final String txt1;
  final String txt2;
   MyStatelessWidget({Key? key ,required this.txt1,required this.txt2});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(

        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text(""),
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