import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:app_covid19/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'components/cabecalho_dados_pais.dart';
import 'components/card_pais_casos_graves.dart';
import 'components/card_pais_infectados.dart';
import 'components/card_pais_mortes_hoje.dart';
import 'components/card_pais_recuperados.dart';
import 'components/card_pais_total_mortes.dart';

class TelaDadosPais extends StatelessWidget {

  final String nomePais;

  TelaDadosPais(this.nomePais);

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {

    _homeController.fetchCountryCases(nomePais: nomePais);

    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 23, 99, 1.0),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'INFORMAÇÕES COVID-19',
          ),
        ),
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
                      child: CabecalhoDadosPais()
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),


                  Expanded(
                    flex: 3,
                    child: ListView(
                      children: [
                        CardPaisInfectados(homeController: _homeController,),
                        CardPaisCasosGraves(homeController: _homeController,),
                        CardPaisRecuperados(homeController: _homeController,),
                        CardPaisMortesHoje(homeController: _homeController,),
                        CardPaisTotalMortes(homeController: _homeController,),
                      ],
                    )
                  )
                ],
              ),
        );
  }
}
