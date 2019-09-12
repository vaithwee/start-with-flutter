import 'package:flutter/material.dart';

class TextFieldAndFormRoute extends StatefulWidget {



    @override
    State createState() {
        return new _TextFieldAndFormRouteState();
    }
}

class _TextFieldAndFormRouteState extends State<TextFieldAndFormRoute> {



    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("输入框和表单"),
            ),
            body: Container(
                child: (Column(
                    children: <Widget>[
                        TextField(
                            controller: _unameController,
                            autofocus: true,
                            decoration: InputDecoration(
                                labelText: "用户名",
                                hintText: "用户名或者邮箱",
                                prefixIcon: Icon(Icons.person),
                            ),
                        ),
                        TextField(
                            decoration: InputDecoration(
                                labelText: "密码",
                                hintText: "您的登录密码",
                                prefixIcon: Icon(Icons.lock),
                            ),
                        ),
                    ],
                )),
            ),
        );
    }

    TextEditingController _unameController = TextEditingController();

    @override
    void initState() {
        super.initState();
        _unameController.addListener((){
           print(_unameController.text);
        });
    }
}