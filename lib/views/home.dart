import 'package:app_covid19/components/card_paises_afetados.dart';
import 'package:app_covid19/components/card_total_infectados.dart';
import 'package:app_covid19/components/card_total_mortes.dart';
import 'package:app_covid19/components/card_total_recuperados.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 23, 99, 1.0),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    'INFORMAÇÕES COVID-19',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: ListView(
                children: [
                  CardTotalInfectados(),
                  CardTotalRecuperados(),
                  CardTotalPaisesAfetados(),
                  CardTotalMortes()
                ],
              ),
            ),
          ],
        ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[600],
        selectedLabelStyle: TextStyle(),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
        ],
      ),
      );
  }
}
