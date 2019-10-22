import 'package:flutter/material.dart';
import 'package:flutter_define_widget/widget/GradientButton.dart';

class GradientButtonRoute extends StatefulWidget {
	
	@override
	State createState() {
		return GradientButtonRouteState();
	}
}

class GradientButtonRouteState extends State<GradientButtonRoute> {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("GranidentButton"),
			),
			body: Container(
				child: Column(
					children: <Widget>[
						GradientButton(
							colors: [Colors.orange, Colors.red],
							height: 50,
							child: Text("Submit"),
							onPressed: onTap,
						)
					],
				),
			),
		);
	}
	
	void onTap() {
		print("button click");
	}
}