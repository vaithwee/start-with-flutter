import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            child: Text("显示SnackBar"),
            onPressed: () {
              ScaffoldState _state = Scaffold.of(context);
              _state.showSnackBar(SnackBar(
                content: Text("我是SnackBar"),
              ));
            },
          );
        }),
      ),
    );
  }
}
