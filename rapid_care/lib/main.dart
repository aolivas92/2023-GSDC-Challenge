import 'package:flutter/material.dart';
import 'package:rapid_care/pages/main_page.dart';
void main(List<String> args) {
  runApp(const _mainPage());
}

class _mainPage extends StatelessWidget {
  const _mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rapid Care',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
    home: const mainPage()); // This is the main page of the app that gets called from main_page.dart
  }
}
