import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// widgets
import 'package:nubank_flutter/pages/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: <Widget>[
          MyAppBar()
        ],
      ),
    );
  }
}
