
import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text("文本及样式"),),
            body: new Container(
                child: Column(
                    children: <Widget>[
                        Text("hello world hello world hello world hello world hello world hello world hello world", textAlign: TextAlign.right,),
                        Text("hello world hello world hello world hello world hello world hello world hello world", maxLines: 1, overflow: TextOverflow.ellipsis,),
                        Text("hello world", textScaleFactor: 1.5,),
                        Text("hello world", style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            height: 1.2,
                            fontFamily: "Courier",
                            background: new Paint()..color=Colors.yellow,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                        ),),
                        Text.rich(TextSpan(
                            children: [
                                TextSpan(
                                    text: "Home: "
                                ),
                                TextSpan(
                                    text: "https://flutter.io",
                                    style: TextStyle(
                                        color: Colors.blue,
                                    )
                                )
                            ]
                        )),
                        DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                            ),
                            textAlign: TextAlign.start,
                            child: Column (
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    Text("hello world"),
                                    Text("i am jack"),
                                    Text("i am jack", style: TextStyle(
                                        inherit: false,
                                        color: Colors.grey,
                                    ),),
                                    Text("use the font for this text", style: TextStyle(
                                        fontFamily: "Fontsss"
                                    ),)
                                ],
                            ),
                        )
                    ],
                ),
            )
        );
    }
}