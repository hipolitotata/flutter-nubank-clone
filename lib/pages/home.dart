import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/widgets/dots_app.dart';

// widgets
import 'package:nubank_flutter/pages/widgets/my_app_bar.dart';
import 'package:nubank_flutter/pages/widgets/page_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  void _changedPage(int index) {
    setState(() => _currentIndex = index);
  }

  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() => _showMenu = !_showMenu);
              }),
          PageViewApp(changedPage: _changedPage, top: _screenHeight * .20),
          DotsApp(currentIndex: _currentIndex, top: _screenHeight * .66)
        ],
      ),
    );
  }
}
