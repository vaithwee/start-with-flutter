import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfinitedGridViewTestRoute extends StatefulWidget {

    @override
    State createState() {
        return _InfinitedGridViewTestRoute();
    }
}

class _InfinitedGridViewTestRoute extends State<InfinitedGridViewTestRoute> {

    List<IconData> _icons = [];


    @override
    void initState() {
        super.initState();
        _retrieveIcons();
    }



    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Infinted Grid View"),
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                ),
                itemCount: _icons.length,
                itemBuilder: (context, idx) {
                    if (idx == _icons.length -1 && _icons.length < 200) {
                        _retrieveIcons();
                    }
                    return Icon(_icons[idx]);

                }
            ),
        );
    }

    void _retrieveIcons() {
        Future.delayed(Duration(seconds: 2)).then((e) {
           setState(() {
             _icons.addAll([
                 Icons.ac_unit,
                 Icons.airport_shuttle,
                 Icons.all_inclusive,
                 Icons.beach_access, Icons.cake,
                 Icons.free_breakfast
             ]);
           });
        });
    }
}