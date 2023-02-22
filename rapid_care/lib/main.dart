import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(homePage());
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.blue, title: const Text('Rapid Care')),
    ));
  }
}
