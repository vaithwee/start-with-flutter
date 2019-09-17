import 'package:flutter/material.dart';

class InfiniteListViewTestRoute extends StatefulWidget {
    @override
    _InfiniteListViewTestRouteState createState() => _InfiniteListViewTestRouteState();
}

class _InfiniteListViewTestRouteState extends State<InfiniteListViewTestRoute> {

    static const loadingTag = "##loading##";
    var words = <String>[loadingTag];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Infinite List View"),
            ),
            body: ListView.separated(
                itemBuilder: (BuildContext cxt, int index) {
                    if (words[index] == loadingTag) {
                        if (words.length -1 < 100) {
                            
                        }
                    }
                },
                separatorBuilder: (BuildContext cxt, int index) {
                   return Divider(height: 0,);
                },
                itemCount: words.length),
        );
    }
    
    void _retrieveData() {
        Future.delayed(Duration(seconds: 2)).then((e) {
           words.insertAll(words.length-1, generateWordPairs) 
        });
    }
}