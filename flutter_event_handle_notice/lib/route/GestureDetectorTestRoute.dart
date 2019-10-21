import 'package:flutter/material.dart';

class GestureDetectorTestRoute extends StatefulWidget {
  @override
  State createState() {
    return GestureDetectorTestRouteState();
  }
}

class GestureDetectorTestRouteState extends State<GestureDetectorTestRoute> {
  String _operation = "No Gesture deteced";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text("Gesture Detector"),
	    ),
        body: Center(
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200,
          height: 100,
          child: Text(
            _operation,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        onTap: () => updateText("Tap"),
        onDoubleTap: () => updateText("Double Tap"),
        onLongPress: () => updateText("Long Press"),
      ),
    ));
  }

  void updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
}
