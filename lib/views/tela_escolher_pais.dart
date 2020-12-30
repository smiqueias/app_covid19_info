import 'package:app_covid19/views/tela_dados_pais.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:app_covid19/controllers/home_controller.dart';
import 'package:get/get.dart';


class TelaEscolherPais extends StatelessWidget {

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[500],
      title: const Text(
        'Escolha um dos países afetados pela Covid-19',
        style: TextStyle(
          color: Colors.white
        ),
        textAlign: TextAlign.center,
      ),

      content: Obx(
        () =>  Container(
          height: 150,
          width: 150,
          child: Column(
            children: [

                 TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  controller: _homeController.nomePais.value,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),


              SizedBox(height: 30,),

                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => TelaDadosPais(
                              _homeController.nomePais.value.text
                            ))
                          );
                        },
                        color: Color.fromRGBO(58, 23, 99, 1.0),
                        child: const Text(
                          'Buscar',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
            ],
          ),
        ),
      ),

    );
  }
}



