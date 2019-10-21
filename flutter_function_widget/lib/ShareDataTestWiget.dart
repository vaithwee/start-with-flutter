import 'package:flutter/material.dart';
import 'package:flutter_function_widget/ShareDataWidget.dart';

class ShareDataTestWidget extends StatefulWidget {
  @override
  State createState() {
    return new ShareDataTestWidgetState();
  }
}

class ShareDataTestWidgetState extends State<ShareDataTestWidget> {
  @override
  Widget build(BuildContext context) {
    return new Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
