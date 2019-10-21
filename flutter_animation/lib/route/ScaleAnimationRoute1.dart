import 'package:flutter/material.dart';
import 'package:flutter_animation/widget/AnimatedImage.dart';

class ScaleAnimationRoute1 extends StatefulWidget {
	
	@override
	State createState() {
		return ScaleAnimationRoute1State();
	}
}

class ScaleAnimationRoute1State extends State<ScaleAnimationRoute1> with SingleTickerProviderStateMixin {
	Animation<double> animation;
	AnimationController animationController;
	
	
	@override
	void initState() {
		super.initState();
		animationController = new AnimationController(vsync: this, duration: Duration(seconds: 3));
		animation = new Tween(begin: 0.0, end: 300.0).animate(animationController);
		animationController.forward();
		animation.addStatusListener((status) {
			if (status == AnimationStatus.completed) {
				animationController.reverse();
			} else if (status == AnimationStatus.dismissed) {
				animationController.forward();
			}
		});
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Scale"),
			),
			body: AnimatedBuilder(
				animation: animation,
				child: Image.asset("./images/sea.jpeg"),
				builder: (BuildContext ctx, Widget child) {
					return new Center(
						child: Container(
							height: animation.value,
							width: animation.value,
							child: child,
						),
					);
				},
			)
		);
	}
}