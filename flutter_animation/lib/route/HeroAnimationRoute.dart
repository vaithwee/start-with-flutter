import 'package:flutter/material.dart';

class HeroAnimationRoute extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: AppBar(
				title: Text("1"),
			),
			body: Container(
				alignment: Alignment.topCenter,
				child: InkWell(
					child: Hero(
						tag: "avatar",
						child: ClipOval(
							child: Image.asset("./images/sea.jpeg", width: 50,height: 50,),
						),
					),
					onTap: () {
						Navigator.push(context, PageRouteBuilder(
							pageBuilder: (BuildContext ctx, Animation animation, Animation secondaryAnimation) {
								return new FadeTransition(opacity: animation, child: Scaffold(
									appBar: AppBar(
										title: Text("Original"),
									),
									body: HeroAnimationRouteB(),
								),);
							}
						));
					},
				),
			),
		);
	}
}

class HeroAnimationRouteB extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Center(
			child: Hero(
				tag: "avatar",
				child: Image.asset("./images/sea.jpeg"),
			),
		);
	}
}