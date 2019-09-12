import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("按钮"),
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        Row(
                            children: <Widget>[
                                RaisedButton(
                                    child: Text("normal"),
                                    onPressed: () {},
                                ),
                                FlatButton(
                                    child: Text("normal"),
                                    onPressed: () {},
                                ),
                                OutlineButton(
                                    child: Text("normal"),
                                    onPressed: () {},
                                ),
                                IconButton(
                                    icon: Icon(Icons.thumb_up),
                                    onPressed: () {},
                                )
                            ],
                        ),
                        Row(
                            children: <Widget>[
                                RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.send), label: Text("发送")),
                                OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("添加")),
                                FlatButton.icon(onPressed: (){}, icon: Icon(Icons.info), label: Text("详情")),
                            ],
                        ),
                        FlatButton(
                            color: Colors.blue,
                            highlightColor: Colors.blue[700],
                            colorBrightness: Brightness.dark,
                            splashColor: Colors.grey,
                            child: Text("Sumbit"),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            onPressed: () {},
                        )
                    ],
                ),
            ),
        );
    }
}