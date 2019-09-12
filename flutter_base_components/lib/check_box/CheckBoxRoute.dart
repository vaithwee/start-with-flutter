import 'package:flutter/material.dart';

class CheckBoxRoute extends StatefulWidget {



    @override
    State createState() {
        return new _CheckBoxRouteState();
    }

}

class _CheckBoxRouteState extends State<CheckBoxRoute> {

    bool _switchSelected = true;
    bool _checkboxSelected = true;


    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("单选开关和复选框"),
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        Switch(
                            value: _switchSelected,
                            onChanged: (value) {
                                setState(() {
                                  _switchSelected = value;
                                });
                            },
                        ),
                        Checkbox(
                          value: _checkboxSelected,
                          activeColor: Colors.red,
                          onChanged: (value) {
                              setState(() {
                                _checkboxSelected = value;
                              });
                          },
                        ),
                    ],
                ),
            ),
        );
    }
}