import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/widgets/card_app.dart';

// widgets
import 'package:nubank_flutter/pages/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: <Widget>[
          MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() => _showMenu = !_showMenu);
              }),
          Positioned(
              top: _screenHeight * .19,
              height: _screenHeight * .45,
              left: 0,
              right: 0,
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[CardApp(), CardApp()],
              ))
        ],
      ),
    );
  }
}
