import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmBooking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xff6043F5)),
      home: Scaffold(
        appBar: null,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
            child: Text("Booking Confirm",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50),),
          ),
            Center(
              child: Text("Thank You !!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            )
          ]
        ),

      ),

    );
  }

}