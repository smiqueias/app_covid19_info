import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:app_covid19/controllers/home_controller.dart';
import 'package:get/get.dart';

class TelaDadosPais extends StatelessWidget {
  final String nomePais;

  TelaDadosPais(this.nomePais);

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(nomePais);

    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 23, 99, 1.0),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'INFORMAÇÕES COVID-19',
          ),
        ),
        body: FutureBuilder(
          future: _homeController.fetchCountryCases(nomePais: nomePais),
          builder: (context, snapshot) {

            if (snapshot.connectionState == ConnectionState.done) {

              return Column(
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
                      child: Center(child: Obx(() {
                        return _homeController.isLoading.value
                            ? CircularProgressIndicator()
                            : Padding(
                                padding: EdgeInsets.all(8),
                                child: Image.network(
                                  _homeController.pais.value.urlBandeira,
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.contain,
                                ),
                              );
                      })),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Expanded(
                    flex: 3,
                    child: ListView(
                      children: [
                        Card(
                          color: Colors.deepPurple,
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [

                                Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                  size: 30,
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Text(
                                  ' Total de\n Infectados ',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Expanded(
                                  child: Obx(() {
                                    return _homeController.isLoading.value
                                        ? CircularProgressIndicator()
                                        : Text(
                                      _homeController.pais.value.casos.toString(),
                                      style: TextStyle(color: Colors.grey[350], fontSize: 30),
                                    );
                                  }),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Card(
                          color: Colors.deepPurple,
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [

                                Icon(
                                  Icons.error,
                                  color: Colors.white,
                                  size: 30,
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Text(
                                  ' Casos Graves ',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Expanded(
                                  child: Obx(() {
                                    return _homeController.isLoading.value
                                        ? CircularProgressIndicator()
                                        : Text(
                                      _homeController.pais.value.criticos.toString(),
                                      style: TextStyle(color: Colors.grey[350], fontSize: 30),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          color: Colors.deepPurple,
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [

                                Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 30,
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Text(
                                  ' Total de\n Recuperados ',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Expanded(
                                  child: Obx(() {
                                    return _homeController.isLoading.value
                                        ? CircularProgressIndicator()
                                        : Text(
                                      _homeController.pais.value.recuperados.toString(),
                                      style: TextStyle(color: Colors.grey[350], fontSize: 30),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          color: Colors.redAccent,
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [

                                Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                  size: 30,
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Text(
                                  ' Mortes Hoje ',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Expanded(
                                  child: Obx(() {
                                    return _homeController.isLoading.value
                                        ? CircularProgressIndicator()
                                        : Text(
                                      _homeController.pais.value.mortesHoje.toString(),
                                      style: TextStyle(color: Colors.grey[350], fontSize: 30),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Card(
                        color: Colors.redAccent,
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [

                                Icon(
                                  Icons.warning_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Text(
                                  ' Total de\n Mortes ',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),

                                SizedBox(
                                  width: 30,
                                ),

                                Expanded(
                                  child: Obx(() {
                                    return _homeController.isLoading.value
                                        ? CircularProgressIndicator()
                                        : Text(
                                      _homeController.pais.value.mortes.toString(),
                                      style: TextStyle(color: Colors.grey[350], fontSize: 30),
                                    );
                                  }),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
