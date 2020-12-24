import 'package:app_covid19/controllers/stores/home_stores.dart';
import 'package:flutter/material.dart';

class CardTotalPaisesAfetados extends StatelessWidget {

  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _homeController.fetchAllCasesOfWordl(),
        builder: (context, snapshot) {
          var totalPaisesAfetados = snapshot.data.paisesAfetados;

          return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [

                  const Icon(
                    Icons.assessment_rounded,
                    color: Colors.white,
                    size: 30,
                  ),

                  SizedBox(
                    width: 30,
                  ),

                  const Text(
                    ' Países Afetados ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),

                  SizedBox(
                    width: 80,
                  ),

                  Text(
                    totalPaisesAfetados.toString(),
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
