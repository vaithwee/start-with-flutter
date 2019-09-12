import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FouceNodeRoute extends StatefulWidget {

    @override
    _FouceNodeRouteState createState() => _FouceNodeRouteState();
}

class _FouceNodeRouteState extends State<FouceNodeRoute> {

    FocusNode focusNode1 = new FocusNode();
    FocusNode focusNode2 = new FocusNode();
    FocusScopeNode focusScopeNode;


    @override
    void initState() {
        super.initState();
        focusNode1.addListener(() {
           print(focusNode1.hasFocus);
        });
    }

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("焦点控制"),
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        TextField(
                            autofocus: true,
                            focusNode: focusNode1,
                            decoration: InputDecoration(
                                labelText: "input1",
                            ),
                        ),
                        TextField(
                            focusNode: focusNode2,
                            decoration: InputDecoration(
                                labelText: "input2",
                            ),
                        ),
                        Builder(builder: (ctx) {
                            return new Column(
                                children: <Widget>[
                                    RaisedButton(
                                        child: Text("移动焦点"),
                                        onPressed: () {
                                            if (null == focusScopeNode) {
                                                focusScopeNode = FocusScope.of(context);
                                            }
                                            focusScopeNode.requestFocus(focusNode2);
                                        },
                                    ),
                                    RaisedButton(
                                        child: Text("隐藏键盘"),
                                        onPressed: () {
                                            focusNode1.unfocus();
                                            focusNode2.unfocus();
                                        },
                                    ),
                                ],
                            );
                        },)

                    ],
                ),
            ),
        );
    }
}