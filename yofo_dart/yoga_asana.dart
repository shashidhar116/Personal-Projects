import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yoga extends StatelessWidget {
  final String name, imagePath;

  Yoga({
    required this.name,
    required this.imagePath,
  });

  final yogaAsanas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga Asanas To Do'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Material(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Image.asset(imagePath),
                  Text(name),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
