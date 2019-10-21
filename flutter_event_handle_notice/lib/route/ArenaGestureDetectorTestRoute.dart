import 'package:flutter/material.dart';

class ArenaGestureDetectorTestRoute extends StatefulWidget {
	
	@override
	State createState() {
		return new ArenaGestureDetectorTestRouteState();
	}
}

class ArenaGestureDetectorTestRouteState extends State<ArenaGestureDetectorTestRoute> {
	double _top = 0;
	double _left = 0;
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Arena"),
			),
			body: Stack(
				children: <Widget>[
					Positioned(
						top: _top,
						left: _left,
						child: GestureDetector(
							child: CircleAvatar(
								child: Text("A"),
							),
							onVerticalDragUpdate: (DragUpdateDetails e) {
								setState(() {
								  _top += e.delta.dy;
								});
							},
							onHorizontalDragUpdate: (DragUpdateDetails e) {
								setState(() {
								  _left += e.delta.dx;
								});
							},
						),
					)
				],
			),
		);
	}
}