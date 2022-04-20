

import 'package:babycare/screens/notification_cart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SitterNotification extends StatefulWidget {

  final String email;

  const SitterNotification({Key? key, required this.email}) : super(key: key);
  @override
  State<SitterNotification> createState() => _SitterNotificationState();
}

class _SitterNotificationState extends State<SitterNotification> {
  @override
  Widget build(BuildContext context) {
    print(widget.email);
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            // SitterCart(),
            // SitterCart(),
            FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance
                  .collection("booking")
                  .where('sitterId', isEqualTo: widget.email)
                  .get(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading");
                }

                if (snapshot.connectionState == ConnectionState.done) {

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SitterCart(name: "Hello",),
                  );
                }

                // Loading State
                return Center(
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 50,
                    width: 50,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2.0,
                    ),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
