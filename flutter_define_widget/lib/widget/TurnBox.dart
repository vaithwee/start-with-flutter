import 'package:flutter/cupertino.dart';

class TurnBox extends StatefulWidget {
	final double turns;
	final int speed;
	final Widget child;
	
	TurnBox({Key key, this.turns, this.speed, this.child}) : super(key: key);
	
	@override
	State createState() {
		return TurnBoxState();
	}
	
	
}

class TurnBoxState extends State<TurnBox> with SingleTickerProviderStateMixin {
	AnimationController _controller;
	
	@override
	void initState() {
		super.initState();
		_controller = new AnimationController(vsync: this, lowerBound: -double.infinity, upperBound: double.infinity);
		_controller.value = widget.turns;
	}
	
	@override
	void dispose() {
	  // TODO: implement dispose
		_controller.dispose();
		super.dispose();
	}
	
	@override
	Widget build(BuildContext context) {
		return RotationTransition(
			turns: _controller,
			child: widget.child,
		);
	}
	
	@override
	void didUpdateWidget(TurnBox oldWidget) {
		super.didUpdateWidget(oldWidget);
		if (oldWidget.turns != widget.turns) {
			_controller.animateTo(widget.turns, duration: Duration(milliseconds: widget.speed??200), curve: Curves.easeOut);
		}
	}
	
	
}