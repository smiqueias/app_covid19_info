import 'package:app_covid19/controller/home_controller.dart';
import 'package:flutter/material.dart';

class CardTotalInfectados extends StatelessWidget {

  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _homeController.fetchAllCasesOfWorld(),
        builder: (context, snapshot) {
          var totalInfectados = snapshot.data.casos;

          return Card(
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
                  Text(
                    totalInfectados.toString(),
                    style: TextStyle(color: Colors.grey[350], fontSize: 30),
                  )
                ],
              ),
            ),
            color: Colors.deepPurple,
          );
        });
  }
}
