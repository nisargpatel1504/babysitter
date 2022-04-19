import 'package:babycare/screens/notification.dart';
import 'package:babycare/screens/sitterProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SitterHome extends StatefulWidget {
  const SitterHome({Key? key}) : super(key: key);

  @override
  State<SitterHome> createState() => _SitterHomeState();
}

class _SitterHomeState extends State<SitterHome> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    SitterNotification(),
    babysitterProfile(),
];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Baby Sitter'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.logout),
            ),
          ]),
      backgroundColor: const Color(0xff693EFF),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
            backgroundColor: Colors.green,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

    );
  }
}
