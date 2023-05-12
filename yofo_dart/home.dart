import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yofo/ui/pages/yoga_asana.dart';
import 'diet.dart';
import './bnavi.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            height: height * 0.5,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      child: Text(
                        'Your Yoga Asanas',
                        style: TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) =>
                                Yoga(imagePath: 'null', name: 'pranayamam'))));
                      },
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: GestureDetector(
                      child: _YogaCard(),
                    ),
                    //color: Colors.redAccent,
                  )),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: GestureDetector(
                      child: Text(
                        'Your Diet',
                        style: TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: ((context) => Diet())));
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: _DietCard(),
                      //color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _YogaCard extends StatelessWidget {
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
            icon: Image.asset('app images/yoga 3.jpg'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) =>
                      null)));
            },
          ),
        ),
      ),
    );
  }
}

class _DietCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Material(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 4,
          child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => null)));
              },
              icon: Image.asset('app images/diet 3.jpg'))),
    );
  }
}
