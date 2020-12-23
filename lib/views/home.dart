import 'package:app_covid19/components/card_paises_afetados.dart';
import 'package:app_covid19/components/card_total_infectados.dart';
import 'package:app_covid19/components/card_total_mortes.dart';
import 'package:app_covid19/components/card_total_recuperados.dart';
import 'package:app_covid19/controller/home_controller.dart';
import 'package:app_covid19/models/mundo_model.dart';
import 'package:app_covid19/repositories/covidapi_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[100],
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
      );
  }
}
