import 'package:flutter/material.dart';

class TestListenerRoute extends StatefulWidget {
	
	
	
	@override
	State createState() {
		return TestListenerRouteState();
	}
}

class TestListenerRouteState extends State<TestListenerRoute> {
	PointerEvent _event;
	@override
	Widget build(BuildContext context) {
		return Listener(
			child: Container(
				alignment: Alignment.center,
				color: Colors.blue,
				width: 300,
				height: 150,
				child: Text(_event?.toString()??"", style: TextStyle(color: Colors.white, fontSize: 16),),
			),
			onPointerDown: (PointerEvent event) => setState(() => _event = event),
			onPointerMove: (PointerEvent event) => setState(() => _event = event),
			onPointerUp: (PointerEvent event) => setState(() => _event = event),
		);
	}
}