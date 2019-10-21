import 'package:flutter/material.dart';
import 'package:flutter_function_widget/ShareDataTestWiget.dart';
import 'package:flutter_function_widget/ShareDataWidget.dart';

class ShareDataAnoterRoute extends StatefulWidget {
	
	@override
	State createState() {
		return ShareDataAnoterRouteState();
	}
}

class ShareDataAnoterRouteState extends State<ShareDataAnoterRoute> {
	int count = 0;
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: AppBar(
				title: Text("Share Data"),
			),
			body: Center(
				child: ShareDataWidget(
					data: count,
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Padding(
								padding: const EdgeInsets.only(bottom: 20),
								child: ShareDataTestWidget(),
							),
							RaisedButton(
								onPressed: () {
									setState(() {
										++count;
									});
								},
								child: Text("Add"),
							)
						],
					),
				),
			),
			
		);
	}
}