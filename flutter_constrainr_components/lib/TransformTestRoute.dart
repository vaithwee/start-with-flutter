import 'dart:math';

import 'package:flutter/material.dart';


class TransformTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
      ),
      body: Padding(
          padding: EdgeInsets.all(50),
        child: Wrap(
          spacing: 50,
          runSpacing: 50,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(0.3),
                child: new Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.deepOrange,
                  child: const Text("Apartment for rent!"),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Transform.translate(
                offset: Offset(-20, -5),
                child: Text(
                  "hello world",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
              DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.red,
                  ),
                  child: Transform.rotate(angle: pi/2, child: Text("hello world"),),
              ),
              DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.red,
                  ),
                  child: Transform.scale(scale: 1.5, child: Text("hello world"),),
              ),

          ],
          alignment: WrapAlignment.start,
        ),
      ),
    );
  }
}
