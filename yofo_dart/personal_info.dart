import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Info extends StatelessWidget {
  final String user_name, email, name;
  final int age;

  Info(
      {required this.user_name,
      required this.email,
      required this.name,
      required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal info'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Material(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name : ${name}'),
                  Text('Username : ${user_name}'),
                  Text('Email : ${email}'),
                  Text('Age : ${age.toString()}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
