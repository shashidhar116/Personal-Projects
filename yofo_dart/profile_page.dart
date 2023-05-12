import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yofo/ui/pages/achieve.dart';

import 'personal_info.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            height: height * 0.6,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              child: Material(
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Your Profile',
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: _Personal(),
                          //color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 10),
                        child: Text(
                          'Your Achievements',
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: _Achievements(),
                          //color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class _Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: IconButton(
            icon: Image.asset('app images/profile_info.jpg'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => Info(
                        age: 30,
                        email: 'xyz@gmail.com',
                        name: 'abc',
                        user_name: 'coder123',
                      ))));
            },
          ),
        ),
      ),
    );
  }
}

class _Achievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: IconButton(
            icon: Image.asset('app images/achieve.jpg'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Achieve())));
            },
          ),
        ),
      ),
    );
  }
}
