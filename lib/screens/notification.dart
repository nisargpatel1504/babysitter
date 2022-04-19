import 'package:babycare/screens/notification_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SitterNotification extends StatefulWidget {


  @override
  State<SitterNotification> createState() => _SitterNotificationState();
}

class _SitterNotificationState extends State<SitterNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            SitterCart(),
            SitterCart(),
          ],
        ),
      ),
    );
  }
}
