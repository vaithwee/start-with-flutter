import 'package:flutter/material.dart';
import 'package:flutter_base_components/base_widget_intro/ContextRoute.dart';
import 'package:flutter_base_components/base_widget_intro/CounterWidget.dart';
import 'package:flutter_base_components/base_widget_intro/Echo.dart';
import 'package:flutter_base_components/base_widget_intro/SnackBarRoute.dart';
import 'package:flutter_base_components/button/ButtonRoute.dart';
import 'package:flutter_base_components/image/ImageRoute.dart';
import 'package:flutter_base_components/progress_indicator/ProgressIndicatorRoute.dart';
import 'package:flutter_base_components/state_manage/TapboxA.dart';
import 'package:flutter_base_components/state_manage/TapboxB.dart';
import 'package:flutter_base_components/state_manage/TapboxC.dart';
import 'package:flutter_base_components/text_and_style/TextRoute.dart';
import 'package:flutter_base_components/textfield_form/FormTestRoute.dart';
import 'package:flutter_base_components/textfield_form/FouceNodeRoute.dart';
import 'package:flutter_base_components/textfield_form/TextFieldAndFormRoute.dart';

import 'base_widget_intro/CupertinoTestRoute.dart';
import 'check_box/CheckBoxRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        routes: {
          "/": (context) => MyHomePage(title: 'Flutter Demo Page'),
          "cxt": (context) => ContextRoute(),
          "counter": (context) => CounterWidget(),
          "snack": (context) => SnackRoute(),
          "cupertino": (context) => CupertinoTestRoute(),
          "tapboxA" : (context) => TapboxA(),
          "tapboxB" : (context) => ParentWidget(),
          "tapboxC" : (context) => ParentWidgetC(),
          "text" : (context) => TextRoute(),
          "button" : (context) => ButtonRoute(),
          "image" : (context) => ImageRoute(),
          "checkBox" : (context) => CheckBoxRoute(),
          "textfield" : (context) => TextFieldAndFormRoute(),
          "fouceNode" : (context) => FouceNodeRoute(),
          "form" : (context) => FormTestRoute(),
          "progress" : (context) => ProgressIndicatorRoute(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("base"),
            Row(
              children: <Widget>[
                Echo(text: "hello world"),
              ],
            ),
            Text("widget"),
            Row(
              children: <Widget>[

                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "cxt");
                  },
                  child: Text("Context"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "counter");
                  },
                  child: Text("Counter"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "snack");
                  },
                  child: Text("Snack Bar"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "cupertino");
                  },
                  child: Text("Cupertino"),
                ),
              ],
            ),
            Text("state"),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "tapboxA");
                  },
                  child: Text("TapBoxA"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "tapboxB");
                  },
                  child: Text("TapBoxB"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "tapboxC");
                  },
                  child: Text("TapBoxC"),
                )
              ],
            ),
            Text("text and style"),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "text");
                  },
                  child: Text("Text"),
                ),
                RaisedButton(onPressed: () {
                  Navigator.pushNamed(context, "button");
                },
                child: Text("Button"),),
                RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, "image");
                },child: Text("Image"),),
                RaisedButton(onPressed: () {
                  Navigator.pushNamed(context, "checkBox");
                },
                child: Text(("CheckBox")),),

              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "textfield");
                  },
                  child: Text("Text Field And Form"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "fouceNode");
                  },
                  child: Text("Fouce Node"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context ,"form");
                  },
                  child: Text("Form"),
                )
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "progress");
                  },
                  child: Text("Progress"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
