import 'package:flutter/material.dart';

class ProgressIndicatorRoute extends StatefulWidget {
  @override
  _ProgressIndicatorRouteState createState() => _ProgressIndicatorRouteState();
}

class _ProgressIndicatorRouteState extends State<ProgressIndicatorRoute> with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("进度指示器"),
      ),
      body: new Container(
        child: Center(
          child: Column(
            children: <Widget>[
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
              SizedBox(
                height: 3,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5,
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: 0.5,
                ),
              ),
              SizedBox(
                height: 100,
                width: 130,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
//              SingleChildScrollView(
//                child: Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.all(16),
//                      child: LinearProgressIndicator(
//                        backgroundColor: Colors.grey[200],
//                        valueColor: ColorTween(begin: Colors.grey, end: Colors.blue).animate(_animationController),
//                        value: _animationController.value,
//                      ),
//                    )
//                  ],
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }

   AnimationController _animationController;

  @override
  void initState() {
    _animationController = new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
}


