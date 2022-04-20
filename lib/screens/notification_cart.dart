import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SitterCart extends StatelessWidget {
  const SitterCart({Key? key, required this.name,}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         ListTile(
        leading: Icon(Icons.album),
    title: Text(name.toString()),
    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[

      IconButton(onPressed: (){}, icon: Icon(
        Icons.check_circle,
        color: Colors.black.withOpacity(0.5),
        size: 18,
      ),),
    IconButton(onPressed: (){}, icon: Icon(
      Icons.cancel,
      color: Colors.black.withOpacity(0.5),
      size: 18,
    ),),


    const SizedBox(width: 8),
    ],
    ),
    ],
    ),),
    );
  }
}
