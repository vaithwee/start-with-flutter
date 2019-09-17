import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WarpAndFlowRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Wrap and Flow Layout"),
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            spacing: 8,
            runSpacing: 4,
            alignment: WrapAlignment.center,
            children: <Widget>[
              new Chip(
                label: new Text("Hamilton"),
                avatar: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("A"),
                ),
              ),
              new Chip(
                label: new Text("Lafayette"),
                avatar: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("B"),
                ),
              ),
              new Chip(
                label: new Text("Mulligan"),
                avatar: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("H"),
                ),
              ),
              new Chip(
                label: new Text("Laurens"),
                avatar: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("J"),
                ),
              ),
            ],
          ),
          Flow(
            delegate: TestFlowDelegate(margin: EdgeInsets.all(10)),
            children: <Widget>[
              new Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
              new Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
              new Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              new Container(
                width: 80,
                height: 80,
                color: Colors.yellow,
              ),
              new Container(
                width: 80,
                height: 80,
                color: Colors.brown,
              ),
              new Container(
                width: 80,
                height: 80,
                color: Colors.purple,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        context.paintChild(i, transform: new Matrix4.translationValues(x, y, 0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(double.infinity, 200);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }


}
