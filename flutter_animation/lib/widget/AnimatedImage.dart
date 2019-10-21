import 'package:flutter/material.dart';

class AnimatedImage extends AnimatedWidget {
	AnimatedImage({Key key, Animation<double> animation}) : super(key: key, listenable: animation);
	
	@override
	Widget build(BuildContext context) {
		final Animation<double> animation = listenable;
		return new Center(
			child: Image.asset("./images/sea.jpeg",
			width: animation.value,
			height: animation.value,),
		);
	}
	
}