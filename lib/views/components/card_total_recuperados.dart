import 'package:app_covid19/controllers/stores/home_stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardTotalRecuperados extends StatelessWidget {

  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(

        future: _homeController.fetchAllCasesOfWordl(),
        builder: (context, snapshot) {

          if (snapshot.connectionState != ConnectionState.done) {
            return CircularProgressIndicator();
          } else {
            return Card(
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
                    Observer(
                      builder: (_) => Text(
                        snapshot.data.recuperados.toString(),
                        style: TextStyle(color: Colors.grey[350], fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
              color: Colors.deepPurple,
            );
          }
        });
  }
}
