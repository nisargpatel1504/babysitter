

import 'package:flutter/material.dart';

class ParentProfile extends StatefulWidget {
  const ParentProfile({Key? key}) : super(key: key);

  @override
  State<ParentProfile> createState() => _ParentProfileState();
}

class _ParentProfileState extends State<ParentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: Column(
            children:  [
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 250),
                child: Text("Profile",
                  textAlign: TextAlign.left,

                  style: TextStyle(
                      color: Color(0xff6043F5),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.0,

                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/smith jones.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),

                  child: null,

                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextWidget(name: "Name", color: Colors.grey),
              TextWidget(name: "Smith Johns", color: Color(0xff6043F5)),
              SizedBox(
                height: 20,
              ),
              TextWidget(name: "E-mail", color: Colors.grey),
              TextWidget(name: "test@gmail.com", color: Color(0xff6043F5)),
              SizedBox(
                height: 20,
              ),
              TextWidget(name: "Address", color: Colors.grey),
              TextWidget(name: "Montreal, Quebec Canada", color: Color(0xff6043F5)),
              SizedBox(
                height: 20,
              ),
              TextWidget(name: "Phone No.", color: Colors.grey),
              TextWidget(name: "+15149932765", color: Color(0xff6043F5)),
            ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String name;
  final Color color;
  TextWidget({Key? key ,required this.name,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(name,

      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

