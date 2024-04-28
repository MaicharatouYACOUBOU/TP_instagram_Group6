import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Widget pour les stories
          Container(
            height: 100,
            color: Colors.grey[200],
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Nombre de stories
              itemBuilder: (context, index) {
                // Remplacer par le contenu de chaque story
                return Container(
                  width: 100,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Rend le champ de story rond
                    color: Colors.deepPurple, // Couleur de fond de la story
                  ),
                  alignment: Alignment.center,
                  child: Text('Story $index', style: TextStyle(color: Colors.white)),
                );
              },
            ),
          ),
          // Widget pour la publication de photo
          Expanded(
            child: Container(
              color: Colors.blue[300],
              alignment: Alignment.center,
              child: Text('Champ de publication de photo'),
            ),
          ),
        ],
      ),
    );
  }
}
