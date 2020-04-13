import 'package:flutter/cupertino.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  @override
  final double top;

  const PageViewApp({Key key, this.top}) : super(key: key);

  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        height: MediaQuery.of(context).size.height * .45,
        left: 0,
        right: 0,
        child: PageView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[CardApp(), CardApp()]));
  }
}
