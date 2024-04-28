import 'package:flutter/material.dart';
import 'home_page.dart'; // Importez le fichier home_page.dart où se trouve la classe HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: HomePage(),
    );
  }
}
