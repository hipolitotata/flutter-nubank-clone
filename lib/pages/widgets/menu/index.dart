import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_menu_app.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 0,
        right: 0,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity: showMenu ? 1 : 0,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://pngimg.com/uploads/qr_code/qr_code_PNG2.png',
                        height: 110,
                        color: Colors.white),
                    SizedBox(
                      height: 10,
                    ),
                    Text.rich(
                        TextSpan(text: 'Banco ', children: [
                          TextSpan(
                              text: '260 - Nu Pagamentos',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ]),
                        style: TextStyle(fontSize: 15)),
                    SizedBox(
                      height: 5,
                    ),
                    Text.rich(
                      TextSpan(text: 'Agência ', children: [
                        TextSpan(
                            text: '0001',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 5),
                    Text.rich(
                      TextSpan(text: 'Conta ', children: [
                        TextSpan(
                            text: '000000-00',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                      style: TextStyle(fontSize: 15),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            ItemMenuApp(
                              icon: Icons.info_outline,
                              text: 'Me ajuda',
                            ),
                            ItemMenuApp(
                              icon: Icons.person_outline,
                              text: 'Perfil',
                            ),
                            ItemMenuApp(
                              icon: Icons.settings,
                              text: 'Configurar conta',
                            ),
                            ItemMenuApp(
                              icon: Icons.credit_card,
                              text: 'Configurar Cartão',
                            ),
                            ItemMenuApp(
                              icon: Icons.store_mall_directory,
                              text: 'Pedir conta PJ',
                            ),
                            ItemMenuApp(
                              icon: Icons.phone_android,
                              text: 'Configurações do app',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
