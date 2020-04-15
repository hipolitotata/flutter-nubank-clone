import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.black45,
            ),
            Column(
              children: <Widget>[
                Text('Nubank Rewards',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviço que você realmente usa',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.purple[800]),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'ATIVE O SEU REWARDS',
                    style: TextStyle(color: Colors.purple[800]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
