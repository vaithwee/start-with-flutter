import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexLayoutRoute extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text("Flex Layout"),
            ),
            body: Column(
                children: <Widget>[
                    Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: 30,
                                    color: Colors.red,
                                ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  height: 30.0,
                                  color: Colors.green,
                              ),
                            ),
                        ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                          height: 100,
                          child: Flex(
                              direction: Axis.vertical,
                              children: <Widget>[
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                          height: 30,
                                          color: Colors.red,
                                      ),
                                  ),
                                  Spacer(
                                      flex: 1,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                          height: 30,
                                          color: Colors.green,
                                      ),
                                  ),
                              ],
                          ),
                      ),
                    ),
                ],
            ),
        );
    }
}