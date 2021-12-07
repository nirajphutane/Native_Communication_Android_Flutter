import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Communication',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        backgroundColor: Colors.white
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: Colors.black54
      ),
      home: Home(),
    );
  }
}