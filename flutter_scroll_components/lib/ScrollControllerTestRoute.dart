import 'package:flutter/material.dart';

class ScrollControllerTestRoute extends StatefulWidget {

    @override
    ScrollControllerTestRouteState createState() {
        return new ScrollControllerTestRouteState();
    }
}

class ScrollControllerTestRouteState extends State<ScrollControllerTestRoute> {

    ScrollController scrollController = new ScrollController();
    bool showToTopButton = false;


    @override
    void initState() {
        this.scrollController.addListener((){
            print(this.scrollController.offset);
            if (this.scrollController.offset < 1000 && showToTopButton) {
                setState(() {
                  showToTopButton = false;
                });
            } else if (this.scrollController.offset >= 1000 && showToTopButton == false) {
                setState(() {
                  showToTopButton = true;
                });
            }
        });
    }


    @override
    void dispose() {
        scrollController.dispose();
        super.dispose();
    }



    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("scroll controller"),
            ),
            body: Scrollbar(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                    return ListTile(title: Text("$index"));
                },
                itemCount: 50,
                itemExtent: 50,
                controller: this.scrollController,),
            ),
            floatingActionButton: !showToTopButton ? null : FloatingActionButton (
                child: Icon(Icons.arrow_upward),
                onPressed: () {
                    scrollController.animateTo(0, duration: Duration(microseconds: 200), curve: Curves.ease);
                },
            ),
        );
    }
}