import 'package:flutter/material.dart';

class WillPopScopeTestRoute extends StatefulWidget {

    @override
    WillPopScopeTestRouteState createState() => WillPopScopeTestRouteState();
}

class WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {

    DateTime lastPreseeAt;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("WillPopScope"),
            ),
            body: WillPopScope(
                child: Container(
                    alignment: Alignment.center,
                    child: Text("1秒内连续点击两次"),
                ),
                onWillPop: () async {
                    if (lastPreseeAt == null || DateTime.now().difference(lastPreseeAt) > Duration(seconds: 1)) {
                        lastPreseeAt = DateTime.now();
                        return false;
                    }
                    return true;
                },
            ),
        );
    }
}