

import 'package:babycare/screens/notification_cart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newNotification.dart';



class SitterNotification extends StatefulWidget {

  final String email;
  const SitterNotification({Key? key, required this.email}) : super(key: key);

  @override
  State<SitterNotification> createState() => _SitterNotificationState();
}

class _SitterNotificationState extends State<SitterNotification> {

  List<GiftItem> giftItems = [];


  @override
  void initState() {
    super.initState();

    fetchGiftData();

  }

  fetchGiftData() async {
    dynamic result = await GiftManager().getGiftItemList();
    if (result == null) {
      print("Gift list null");
    } else {
      setState(() {
        giftItems = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(

      child: Column(

        children: [
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [

             Container(

               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
               child:
               GridView.builder(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: giftItems.length,
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 1,
                   mainAxisSpacing: 10.0,
                   crossAxisSpacing: 20.0,
                 ),
                 itemBuilder: (context, index) => SitterCart(
                   giftItem: giftItems[index],
                 ),
               ),
             )
            ],
          ),
        ],
      ),
    );
  }
}
