import 'package:flutter/material.dart';

class ImageRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("图片和Icon"),
            ),
            body: Container(
                child: Column( children: <Widget>[
                    Image(
                        image: AssetImage("assets/images/dl.jpg"),
                        
                    ),
                    Image(
                      image: NetworkImage("http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg"),
                    ),
                    Image.network("http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg")
                ],)
            ),
        );
    }
}