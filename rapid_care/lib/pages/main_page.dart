import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapid_care/pages/profile_page.dart';
import 'package:rapid_care/pages/settings_page.dart';
import 'home_page.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => mainPageState();
}

class mainPageState extends State<mainPage>{
  final List _pages = [
    const profilePage(), //profile page gets called from profile_page.dart
    const homePage(), //home page gets called from home_page.dart
    const settingsPage() //settings page gets called from settings_page.dart
  ];
  int _currentIndex = 1;

  //change the page when the bottom navigation bar is clicked
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: changePage,
          selectedItemColor: Colors.black,
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
