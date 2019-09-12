import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
    _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
    TextEditingController _unameController = new TextEditingController();
    TextEditingController _pwdController = new TextEditingController();
    GlobalKey _formKey = new GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Form"),
            ),
            body: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
                child: Form(
                    key: _formKey,
                    autovalidate: true,
                    child: Column(
                        children: <Widget>[
                            TextFormField(
                                autofocus: true,
                                controller: _unameController,
                                decoration: InputDecoration(
                                    labelText: "用户名",
                                    hintText: "用户名或邮箱",
                                    icon: Icon(Icons.person),
                                ),
                                validator: (v) {
                                    return v.trim().length > 0 ? null : "用户名不能为空";
                                },
                            ),
                            TextFormField(
                                controller: _pwdController,
                                decoration: InputDecoration(
                                    labelText: "密码",
                                    hintText: "您的登录密码",
                                    icon: Icon(Icons.lock)
                                ),
                                obscureText: true,
                                validator: (v) {
                                    return v.trim().length > 5 ? null : "密码不能少于6位";
                                },
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 28.0),
                                child: Row(
                                    children: <Widget>[
                                        Expanded(
                                          child: RaisedButton(
                                              padding: EdgeInsets.all(15),
                                              child: Text("登录"),
                                              color: Theme.of(context).primaryColor,
                                              textColor: Colors.white,
                                              onPressed: () {

                                              },
                                          ),
                                        ),
                                    ],
                                ),
                            )
                        ],
                    ),
                ),
            ),
        );
    }
}