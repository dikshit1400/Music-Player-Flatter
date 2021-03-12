import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';

import 'Upgrade.dart';
import 'package:musicpro/Screen/Explore.dart';
import 'package:musicpro/Screen/Upgrade.dart';
import 'package:musicpro/Screen/HomeScreen.dart';
import 'package:musicpro/Screen/Library.dart';
import 'Explore.dart';

void main() {
  runApp(Mymethod());
}

class Mymethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainhome(),
    );
  }
}

class Mainhome extends StatefulWidget {
  @override
  _MainhomeState createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, actions: [





      ]),
      backgroundColor: Colors.black87,
      bottomNavigationBar: bottom(),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          Explore(),
          Library(),
          Upgrade(),
        ],
      ),
    );
  }

  List item = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.explore),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.library_music),
      label: 'Library',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Upgrade',
    ),
  ];

  Widget bottom() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: item,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );
  }
}
