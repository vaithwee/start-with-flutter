import 'package:flutter/material.dart';

class ScaleAnimationRoute extends StatefulWidget {
	
	@override
	State createState() {
		return new ScaleAnimationRouteState();
	}
}

class ScaleAnimationRouteState extends State<ScaleAnimationRoute> with SingleTickerProviderStateMixin {
	
	Animation<double> animation;
	AnimationController controller;
	
	
	@override
	void initState() {
		super.initState();
		/*
		controller = new AnimationController(duration: const Duration(seconds: 3), vsync: this);
		animation = new Tween(begin: 0.0, end: 300.0).animate(controller)..addListener((){
			setState(() {
				
			});
		});
		controller.forward();
		
		 */
		
		controller = new AnimationController(vsync: this, duration: Duration(seconds: 3));
		animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
		animation = new Tween(begin: 0.0, end: 300.0).animate(animation)..addListener(() {
			setState(() {
			
			});
		});
		controller.forward();
	}
	
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: AppBar(
				title: Text("Scale"),
			),
			body: Center(
				child: Image.asset("./images/sea.jpeg",
				width: animation.value,
				height: animation.value,),
			),
		);
	}
	
	@override
  void dispose() {
    // TODO: implement dispose
		controller.dispose();
    super.dispose();
    
  }
}