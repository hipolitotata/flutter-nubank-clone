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

  double _yPosition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;

    // index dots
    _currentIndex = 0;
  }

  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    if (_yPosition == null) {
      _yPosition = _screenHeight * .24;
    }

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
          PageViewApp(
              top: _yPosition,
              changedPage: (index) {
                setState(() => _currentIndex = index);
              },
              onPanUpdate: (details) {
                double positionBottomLimit = _screenHeight * .75;
                double positionTopLimit = _screenHeight * .24;
                double midlePosition = positionBottomLimit - positionTopLimit;

                midlePosition = midlePosition / 2;

                setState(() {
                  _yPosition += details.delta.dy;

                  _yPosition = _yPosition < positionTopLimit
                      ? positionTopLimit
                      : _yPosition;

                  _yPosition = _yPosition > positionBottomLimit
                      ? positionBottomLimit
                      : _yPosition;

                  if (_yPosition != positionBottomLimit &&
                      details.delta.dy > 0) {
                    _yPosition =
                        _yPosition > positionTopLimit + midlePosition - 30
                            ? positionBottomLimit
                            : _yPosition;
                  }

                  if (_yPosition != positionTopLimit && details.delta.dy < 0) {
                    _yPosition =
                        _yPosition < positionBottomLimit - midlePosition
                            ? positionTopLimit
                            : _yPosition;
                  }

                  if (_yPosition == positionBottomLimit) {
                    _showMenu = true;
                  } else if (_yPosition == positionTopLimit) {
                    _showMenu = false;
                  }
                });
              }),
          DotsApp(
              currentIndex: _currentIndex,
              top: !_showMenu ? _screenHeight * .70 : _screenHeight)
        ],
      ),
    );
  }
}