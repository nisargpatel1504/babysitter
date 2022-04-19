import 'package:flutter/material.dart';

class babysitterProfile extends StatefulWidget{
  @override
  State<babysitterProfile> createState() => _babysitterProfileState();
}

class _babysitterProfileState extends State<babysitterProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 60),
                    child: Text("Profile",
                      textAlign: TextAlign.left,

                      style: TextStyle(
                        color: Color(0xff6043F5),
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 60),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.pink,
                      decoration: BorderRadius,
                      child: Image.asset("assets/niki.png", fit: BoxFit.fill,),

                    ),
                  )

                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}