import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {

    @override
    State createState() {
        return new _ParentWidgetState();
    }
}

class _ParentWidgetState extends State<ParentWidget> {

    bool _active = false;

    void _handleTapboxChanged(bool newValue) {
        setState(() {
          _active = !_active;
        });
    }

    @override
    Widget build(BuildContext context) {
        return new Container(
            child: new TapboxB(onChanged: _handleTapboxChanged, active: _active,),
        );
    }
}

class TapboxB extends StatelessWidget {
    TapboxB({Key key, this.active : false, @required this.onChanged});
    final bool active;
    final ValueChanged<bool> onChanged;
    void _handleTop() {
        this.onChanged(active);
    }

    @override
    Widget build(BuildContext context) {
        return new GestureDetector(
            onTap: _handleTop,
            child: Container(
                child: Center(
                    child: Text(
                        active ? "Active" : "Inactive",
                        style: TextStyle(
                            fontSize: 32, color: Colors.white
                        ),
                    ),
                ),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: active ? Colors.lightGreen : Colors.grey,
                ),
            ),
        );
    }


}