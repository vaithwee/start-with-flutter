import 'package:flutter/material.dart';

class ScaleGestureDetectorTestRoute extends StatefulWidget {
	
	@override
	State createState() {
		return ScaleGestureDetectorTestRouteState();
	}
}

class ScaleGestureDetectorTestRouteState extends State<ScaleGestureDetectorTestRoute> {
	
	double _width = 200;
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Scale"),
			),
			body: Center(
				child: GestureDetector(
					child: Image.asset("./images/sea.jpeg", width: _width,),
					onScaleUpdate: (ScaleUpdateDetails details) {
						setState(() {
							_width = 200 * details.scale.clamp(.8, 10);
						});
					},
				)
			),
		);
	}
}