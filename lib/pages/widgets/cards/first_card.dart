import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
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
                            Icons.credit_card,
                            color: Colors.black38,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Cartão de crédito',
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
                              'FATURA ATUAL',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.teal),
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'R\$ ',
                                style:
                                    TextStyle(fontSize: 35, color: Colors.teal),
                                children: [
                                  TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      text: '400',
                                      children: [
                                        TextSpan(
                                            text: ',00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal)),
                                      ])
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text.rich(
                              TextSpan(
                                text: 'Limite disponível ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black45),
                                children: [
                                  TextSpan(
                                    text: 'R\$ 2500,00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: 8,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.orange,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
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
