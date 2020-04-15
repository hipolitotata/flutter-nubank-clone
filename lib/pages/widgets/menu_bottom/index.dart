import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class MenuBottomApp extends StatelessWidget {
  final bool showMenu;

  const MenuBottomApp({Key key, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 400),
      bottom: !showMenu ? MediaQuery.of(context).padding.bottom : 0,
      left: 0,
      right: 0,
      height: 120,
      child: IgnorePointer(
        ignoring: showMenu ? true : false,
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              ItemMenuBottomApp(
                icon: Icons.person_add,
                text: 'indicar amigos',
              ),
              ItemMenuBottomApp(
                icon: Icons.phone_android,
                text: 'Recarga de celular',
              ),
              ItemMenuBottomApp(
                icon: Icons.chat,
                text: 'Cobrar',
              ),
              ItemMenuBottomApp(
                icon: Icons.monetization_on,
                text: 'Empréstimos',
              ),
              ItemMenuBottomApp(
                icon: Icons.move_to_inbox,
                text: 'Depositar',
              ),
              ItemMenuBottomApp(
                icon: Icons.mobile_screen_share,
                text: 'Transferir',
              ),
              ItemMenuBottomApp(
                icon: Icons.format_align_center,
                text: 'Ajustar limite',
              ),
              ItemMenuBottomApp(
                icon: Icons.chrome_reader_mode,
                text: 'Pagar',
              ),
              ItemMenuBottomApp(
                icon: Icons.lock_open,
                text: 'Bloquear cartão',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
