import 'package:flutter/material.dart';

class ListViewTestRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

        Widget divider1 = Divider(color: Colors.black,);
        Widget divider2 = Divider(color: Colors.green,);

        return Scaffold(
            appBar: AppBar(
                title: Text("List View"),
            ),
            body: /*ListView(
                shrinkWrap: true,
                padding:  const EdgeInsets.all(20),
                children: <Widget>[
                    const Text('I\'m dedicating every day to you'),
                    const Text('Domestic life was never quite my style'),
                    const Text('When you smile, you knock me out, I fall apart'),
                    const Text('And I thought I was so smart'),
                ],
            ),*/
            /*
            ListView.builder(
                itemCount: 100,
                itemExtent: 50,
                itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text("$index"));
                }
            )*/
            ListView.separated(
                itemBuilder: (BuildContext context, int index){
                    return ListTile(title: Text("$index"),);
                },
                separatorBuilder: (BuildContext context, int index) {
                    return index%2==0?divider1:divider2;
                },
                itemCount: 100
            ),
        );
    }
}