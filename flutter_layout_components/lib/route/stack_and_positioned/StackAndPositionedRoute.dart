import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackAndPositionedRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("Stack And Position"),
            ),
            body:
                   ConstrainedBox(
                     constraints: BoxConstraints.expand(),
                     child: Stack(
                         fit: StackFit.expand,
                         alignment: Alignment.center,
                         children: <Widget>[
                             Container(
                                 child: Text("hello", style: TextStyle(color: Colors.white),),
                                 color: Colors.red,
                             ),
                             Positioned(
                                 left: 18,
                                 child: Text("i am jack"),
                             ),
                             Positioned(
                                 top: 18,
                                 child: Text("your friend"),
                             )
                         ],
                     ),
                   ),


        );
    }
}