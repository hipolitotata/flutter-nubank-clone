import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenuApp extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenuApp({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),
        Container(
            height: 35,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.7, color: Colors.white))),
            child: RaisedButton(
              color: Colors.purple[800],
              highlightColor: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              splashColor: Colors.purple[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(icon),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        text,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 16,
                  )
                ],
              ),
              onPressed: () {},
            ))
      ],
    );
  }
}
