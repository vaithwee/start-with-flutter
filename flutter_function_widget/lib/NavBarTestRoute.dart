import 'package:flutter/material.dart';
import 'package:flutter_function_widget/NavBar.dart';

class NavBarTestRoute extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			body: Column(
				children: <Widget>[
					NavBar(
						color: Colors.blue,
						title: "标题",
					),
					NavBar(
						color: Colors.white,
						title: "标题",
					),
				],
			),
		);
	}
}