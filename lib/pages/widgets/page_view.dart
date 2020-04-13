import 'package:flutter/cupertino.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  @override
  final double top;
  final ValueChanged<int> changedPage;

  final GestureDragUpdateCallback onPanUpdate;

  const PageViewApp({Key key, this.top, this.changedPage, this.onPanUpdate})
      : super(key: key);

  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
        top: top,
        height: MediaQuery.of(context).size.height * .45,
        left: 0,
        right: 0,
        child: GestureDetector(
            onPanUpdate: onPanUpdate,
            child: PageView(
                onPageChanged: (index) {
                  changedPage(index);
                },
                physics: BouncingScrollPhysics(),
                children: <Widget>[CardApp(), CardApp(), CardApp()])));
  }
}
