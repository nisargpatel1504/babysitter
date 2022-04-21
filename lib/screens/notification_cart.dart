import 'package:babycare/screens/newNotification.dart';

import 'package:flutter/material.dart';

class SitterCart extends StatelessWidget {
  final GiftItem giftItem;
  const SitterCart({
    Key? key,
    required this.giftItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          if(giftItem.status.toString() == "Pending")...[
          Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                 "assets/niki.png",
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20 / 4),
                child: Text(
                  giftItem.name.toString()
                ),
              ),
              Text(
               giftItem.email.toString()
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  IconButton(
                    onPressed: () {
                      GiftManager().update_data(giftItem.id.toString());
                    },
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.black.withOpacity(0.5),
                      size: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.black.withOpacity(0.5),
                      size: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
    ),]
              else...[
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      "assets/niki.png",
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20 / 4),
                    child: Text(
                        giftItem.name.toString()
                    ),
                  ),
                  Text(
                      giftItem.email.toString()
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text("Accepted"),
                    ],
                  )
                ],
              ),
            ),
    ]
        ]
      );
    }
  }

