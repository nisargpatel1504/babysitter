
import 'package:cloud_firestore/cloud_firestore.dart';

class GiftItem {
  String? name, email;
  int? price;
  GiftItem({this.name, this.price, this.email});
}

class GiftManager {
  List<GiftItem> giftItems = [];
  Future getGiftItemList() async {
    final CollectionReference gifts =
    FirebaseFirestore.instance.collection('booking');
    try {
      giftItems.clear();
      var snapshot = await gifts.get();
      snapshot.docs.forEach((element) {
        Map<String, dynamic>? data = element.data() as Map<String, dynamic>?;
        if (data != null && data['sitterId'] == "pant@grr.la") {
          print("Data name : ${data['name']}  ${data['email']} ");
          var gift = GiftItem();
          gift.name = data['name'];
          gift.price = data['price'];
          gift.email = data['email'];
          giftItems.add(gift);
        } else {
          print("error:");
        }
      });
      return giftItems;
    } catch (e) {
      print("Error : ${e.toString()}");
      return [];
    }
  }
}