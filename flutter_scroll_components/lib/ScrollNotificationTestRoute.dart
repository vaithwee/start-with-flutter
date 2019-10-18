import 'package:flutter/material.dart';

class ScrollNotificationTestRoute extends StatefulWidget {

    @override
    ScrollNotificationTestRouteState createState() => new ScrollNotificationTestRouteState();
}

class ScrollNotificationTestRouteState extends State<ScrollNotificationTestRoute> {

    String progress = "0%";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Scroll Notification"),
            ),
            body: Scrollbar(
                child: NotificationListener<ScrollNotification>(
                    // ignore: missing_return
                    onNotification: (ScrollNotification notification) {
                        double p = notification.metrics.pixels / notification.metrics.maxScrollExtent;
                        setState(() {
                          progress = "${(p * 100).toInt()}%";
                        });
                    },
                    child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                            ListView.builder(itemBuilder: (context, index) {
                                return ListTile(title: Text("$index"));
                            },
                            itemExtent: 50,
                                itemCount: 100,
                            ),
                            CircleAvatar(
                                radius: 30,
                                child: Text(progress),
                                backgroundColor: Colors.black54,
                            )
                        ],
                    ),
                ),
            ),
        );
    }
}