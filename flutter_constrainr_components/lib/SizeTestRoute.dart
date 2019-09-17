import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeTestRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

        Widget redBox = DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.red
          ),
        );

        return new Scaffold(
            appBar: AppBar(
                title: Text("Size Contrainer"),
            ),
            body: Wrap(
                runSpacing: 10,
                children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            minWidth: double.infinity,
                            minHeight: 50,
                        ),
                        child: Container(
                            height: 5,
                            child: redBox,
                        ),
                    ),
//                    SizedBox(
//                        width: 80,
//                        height: 80,
//                        child: redBox,
//                    ),
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            minHeight: 60,
                            minWidth: 60
                        ),
                        child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minWidth: 90,
                                minHeight: 30,
                            ),
                            child: redBox,
                        ),
                    )
                ],
            ),
        );
    }
}