import 'package:flutter/material.dart';

class ProviderRoute extends StatefulWidget {
	
	@override
	State createState() {
		return new ProviderRouteState();
	}
}

class ProviderRouteState extends State<ProviderRoute> {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Shopping Car"),
			),
			
		);
	}
}
