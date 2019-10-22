import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_define_widget/widget/TurnBox.dart';

class TurnBoxRoute extends StatefulWidget {
	
	@override
	State createState() {
		return new TurnBoxRouteState();
	}
}

class TurnBoxRouteState extends State<TurnBoxRoute> {
	double _turns = .0;
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Turn Box"),
			),
			body: Center(
				child: Column(
					children: <Widget>[
						TurnBox(
							turns: _turns,
							speed: 500,
							child: Icon(Icons.refresh, size: 50,),
						),
						TurnBox(
							turns: _turns,
							speed: 1000,
							child: Icon(Icons.refresh, size: 50,),
						),
						RaisedButton(
							onPressed: () {
								setState(() {
								  _turns += .2;
								});
							},
							child: Text("顺时针旋转1/5圈"),
						),
						RaisedButton(
							onPressed: () {
								setState(() {
								  _turns -= .2;
								});
							},
							child: Text("逆时针旋转1/5圈"),
						),
					],
				),
			),
		);
	}
}