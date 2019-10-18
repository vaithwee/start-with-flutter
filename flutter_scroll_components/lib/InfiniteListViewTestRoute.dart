import 'package:english_words/english_words.dart';
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
                        if (words.length - 1 < 100) {
                            _retrieveData();
                            return Container(
                                padding: const EdgeInsets.all(16),
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                        strokeWidth: 2,),
                                )
                            );
                        } else {
                            return Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(16),
                                child: Text("没有更多了",
                                    style: TextStyle(color: Colors.grey),),
                            );
                        }
                    }
                    return ListTile(
                        title: Text(words[index]),
                    );
                },
                separatorBuilder: (BuildContext cxt, int index) {
                   return Divider(height: 0,);
                },
                itemCount: words.length),
        );
    }
    
    void _retrieveData() {
        Future.delayed(Duration(seconds: 2)).then((e) {
           words.insertAll(words.length-1,generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
           setState(() {

           });
        });

    }
}