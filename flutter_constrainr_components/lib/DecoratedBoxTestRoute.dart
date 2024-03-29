import 'package:flutter/material.dart';

class DecoratedBoxTestRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("DecoratedBox"),
            ),
            body: Column(
//                spacing: 10,
                children: <Widget>[
                    DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.red, Colors.orange[700]],
                            ),
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(2, 2),
                                    blurRadius: 4
                                )
                            ]
                        ),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                            child: Text("Login", style: TextStyle(color: Colors.white),),
                        ),
                    )
                ],
            ),
        );
    }
}