import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SitterCart extends StatelessWidget {
  const SitterCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        const ListTile(
        leading: Icon(Icons.album),
    title: Text('Dhinchak Pooja'),
    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[



    // TextButton(
    // child: const Text('BUY TICKETS'),
    // onPressed: () {/* ... */},
    // ),

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
