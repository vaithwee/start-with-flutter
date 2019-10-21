import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragGestureDetectorTestRoute extends StatefulWidget {
	
	@override
	State createState() {
		return new DragGestureDetectorTestRouteState();
	}
}

class DragGestureDetectorTestRouteState extends State<DragGestureDetectorTestRoute> {
	double _top = 0;
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: AppBar(
				title: Text("Drag"),
			),
			body: Stack(
				children: <Widget>[
					Positioned(
						top: _top,
						child: GestureDetector(
							child: CircleAvatar(
								child: Text("A"),
							),
							onVerticalDragUpdate: (DragUpdateDetails details) {
								setState(() {
								  _top += details.delta.dy;
								});
							},
						),
					)
				],
			),
		);
	}
}