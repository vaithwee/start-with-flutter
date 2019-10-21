import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GestureRecognizerTestRoute extends StatefulWidget {
	
	@override
	State createState() {
		return new GestureRecognizerTestRouteState();
	}
}

class GestureRecognizerTestRouteState extends State<GestureRecognizerTestRoute> {
	
	TapGestureRecognizer tapGestureRecognizer = new TapGestureRecognizer();
	bool toggle = false;
	
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: AppBar(
				title: Text("Gesture Recogizer"),
			),
			body: Center(
				child: Text.rich(
					TextSpan(
						children: [
							TextSpan(text: "你好世界"),
							TextSpan(text: "点我变色", style: TextStyle(
								fontSize: 30,
								color: toggle ? Colors.blue : Colors.red
							), recognizer: tapGestureRecognizer..onTap = () {
								setState(() {
								  toggle = !toggle;
								});
							}),
							TextSpan(
								text: "你好世界"
							)
						]
					)
				),
			),
		);
	}
	
	@override
	void dispose() {
		tapGestureRecognizer.dispose();
		super.dispose();
	}
	
	
}