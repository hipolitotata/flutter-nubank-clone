import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.attach_money,
                            color: Colors.black38,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Conta',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black38),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Saldo disponivel',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.black38),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'R\$ 2.500,00',
                              style: TextStyle(
                                  fontSize: 30, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black38,
                  ),
                  SizedBox(width: 10),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Compra mais recente em mercado',
                      style: TextStyle(color: Colors.black38, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
