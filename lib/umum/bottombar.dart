import 'package:flutter/material.dart';
import 'package:projekuts/umum/home.dart';
import 'package:projekuts/umum/penggunaan.dart';
import 'package:projekuts/umum/profil.dart';


class bottombar extends StatefulWidget {
  @override
  _bottombarState createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _currentIndex = 0;

  final tabs = [
    home(),
    petunjuk(),
    Profil(),
   
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor:Color.fromRGBO(53, 177, 149, 1),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 17,
        iconSize: 18,
        unselectedItemColor: Colors.blueGrey[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            // ignore: deprecated_member_use
            title: Text('Penggunaan',style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text('Profil Developer',style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
        onTap: (index) {
          setState((){
            _currentIndex=index;
          });
        },
        selectedItemColor: Colors.black,
      
      ),
    );
  }
}
