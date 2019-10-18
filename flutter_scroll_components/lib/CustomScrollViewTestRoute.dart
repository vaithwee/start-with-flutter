import 'package:flutter/material.dart';

class CustomScrollViewTestRoute extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Material(
          child: CustomScrollView(
              slivers: <Widget>[
                  SliverAppBar(
                      pinned: true,
                      expandedHeight: 250,
                      flexibleSpace: FlexibleSpaceBar(
                          title: const Text("Demo"),
                          background: Image.asset("./images/avatar.png", fit: BoxFit.cover,),
                      ),
                  ),
                  SliverPadding(
                      padding: const EdgeInsets.all(8),
                      sliver: SliverGrid(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 4
                          ),
                          delegate:new SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                  return new Container(
                                      alignment: Alignment.center,
                                      color: Colors.cyan[100 * (index % 9)],
                                  );
                              },
                              childCount: 20,
                          )
                      ),
                  ),
                  SliverFixedExtentList(
                      itemExtent: 50,
                      delegate: new SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                              return new Container(
                                  alignment: Alignment.center,
                                  color: Colors.cyan[100 * (index % 9)],
                                  child: Text("lis item $index"),
                              );
                          },
                          childCount: 50,
                      )
                  )
              ],
          ),  
        );
    }
}
