import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapid_care/pages/profile_page.dart';
import 'package:rapid_care/pages/settings_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //List of pages that will be called to display their respective pages
  final List _pages = [
    const profilePage(), //calls profile page
    const homePage(), //calls home page
    const settingsPage(), //calls settings page
  ];
  //function to change the page when the bottom navigation bar is tapped
  int _currentIndex = 1;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
//this contains bottom navigation bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, //change animation type
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      )
    );
  }
}
