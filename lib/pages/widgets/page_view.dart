import 'package:flutter/cupertino.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  @override
  final double top;
  final ValueChanged<int> changedPage;

  const PageViewApp({Key key, this.top, this.changedPage}) : super(key: key);

  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        height: MediaQuery.of(context).size.height * .45,
        left: 0,
        right: 0,
        child: PageView(
          onPageChanged: (index){
            changedPage(index);
          },
            physics: BouncingScrollPhysics(),
            children: <Widget>[
            CardApp(),
            CardApp(), 
            CardApp()]));
  }
}
