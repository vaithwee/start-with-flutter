import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipeAndPanGestrueDetectorTestRoute extends StatefulWidget {
	
	@override
	State createState() {
		return SwipeAndPanGestrueDetectorTestRouteState();
	}
}

class SwipeAndPanGestrueDetectorTestRouteState extends State<SwipeAndPanGestrueDetectorTestRoute> {
	
	double _top = 0;
	double _left = 0;
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Swipe And Pan"),
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
							
							onPanDown: (DragDownDetails e) {
								print("user pan down : ${e.globalPosition}");
							},
							onPanUpdate: (DragUpdateDetails e) {
								print("user pan update : ${e.globalPosition}");
								setState(() {
									_left += e.delta.dx;
									_top += e.delta.dy;
								});
								
							},
							onPanEnd: (DragEndDetails e) {
								print(e.velocity);
							},
						),
					)
				],
			),
		);
	}
}