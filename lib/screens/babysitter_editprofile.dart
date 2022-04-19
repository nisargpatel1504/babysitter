

import 'package:flutter/material.dart';

class babysitterProfile extends StatefulWidget{
  @override
  State<babysitterProfile> createState() => _babysitterProfileState();
}

class _babysitterProfileState extends State<babysitterProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: appBar(),
      ),
      body: Body(context),
    );
  }
}
Widget appBar() {

  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    flexibleSpace: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: GestureDetector (
                onTap: () {},
                child: const CircleAvatar (
                  backgroundImage: AssetImage("assets/user.jpg"),
                  backgroundColor: Colors.transparent,
                  radius: 40.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text("sdjhg",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black,),),
          const SizedBox(height: 10,),
          Text("daslfh", style: const TextStyle(fontSize: 16,color: Colors.black,),),
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton.icon(
          onPressed: ()async{
            await _auth.logOut();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>loginMain()));
            await _auth.signOut();

            //  Navigator.push(context, MaterialPageRoute(builder: (context) => loginMain()));
            Fluttertoast.showToast(
              msg: "Logout Successfully",
              toastLength: Toast.LENGTH_LONG,
              //gravity: ToastGravity.CENTER
            );

          },
          icon: Icon(Icons.person),
          label: Text("Logout")
      )
    ],
  );
}

Widget Body(BuildContext context) {

  var size = MediaQuery.of(context).size;
  return SingleChildScrollView(

    child: Column(
      children: [
        const SizedBox(height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Text("Posts",
                    style: TextStyle(fontSize: 15, color: Colors.black)
                ),
                SizedBox(height: 8,),
                Text("8", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: const [
                Text("Followers",
                    style: TextStyle(fontSize: 15, color: Colors.black)
                ),
                SizedBox(height: 8,),
                Text("565", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: const [
                Text("Following",
                    style: TextStyle(fontSize: 15, color: Colors.black)
                ),
                SizedBox(height: 8,),
                Text("15", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 30,
        ),

        Wrap(
          spacing: 10,
          runSpacing: 5,
          children: List.generate(imgList.length, (index){
            return Container(
              width: (size.width-60)/2,
              height: (size.width-60)/2,
              decoration: BoxDecoration(image: DecorationImage(
                  image:NetworkImage(),
                  fit: BoxFit.cover)),
              child: const Center(
                child: Icon(Icons.play_circle_outline,size: 40,color: Colors.white),

              ),
            );
          }),
        )
      ],
    ),
  );
}




basename(String path) {
  return path;
}




}