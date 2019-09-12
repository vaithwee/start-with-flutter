import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {

    @override
    State createState() {
        return new _ParentWidgetState();
    }
}

class _ParentWidgetState extends State<ParentWidgetC> {

    bool _active = false;

    void _handleTapboxChanged(bool newValue) {
        setState(() {
          _active = !newValue;
        });
    }

    @override
    Widget build(BuildContext context) {
        return new Container(
            child: new TapboxC(onChanged: _handleTapboxChanged, active: _active,),
        );
    }
}

class TapboxC extends StatefulWidget {
    final bool active;
    final ValueChanged<bool> onChanged;
    TapboxC({Key key, this.active : false, @required this.onChanged}) : super (key:key);

    @override
    State createState() {
        return _TapboxCState();
    }

}

class _TapboxCState extends State<TapboxC> {

    bool _highlight = false;

    void _handleTapDown(TapDownDetails details) {
        setState(() {
          _highlight = true;
        });
    }

    void _hanldeTapUp(TapUpDetails details) {
        setState(() {
          _highlight = false;
        });
    }

    void _handleTapCancel() {
        setState(() {
          _highlight = false;
        });
    }

    void _handleTap() {
        widget.onChanged(widget.active);
    }

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTapDown: _handleTapDown,
            onTapUp: _hanldeTapUp,
            onTapCancel: _handleTapCancel,
            onTap: _handleTap,
            child: new Container(
                child: new Center(
                    child: new Text(
                        widget.active ? "active" : "inactive",
                        style: new TextStyle(fontSize: 32, color: Colors.white),
                    ),
                ),
                width: 200,
                height: 200,
                decoration: new BoxDecoration(
                    color: widget.active ? Colors.lightGreen : Colors.grey,
                    border: _highlight ? new Border.all(
                        color : Colors.teal,
                        width : 10.0
                    ) : null
                ),
            ),
        );
    }
}