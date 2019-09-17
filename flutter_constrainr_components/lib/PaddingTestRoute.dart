import 'package:flutter/material.dart';

class PaddingTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Padding"),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("Hello World"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text("i am jack"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text("your friend"),
            )
          ],
        ),
      ),
    );

  }
}
