import 'package:app_covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPaisRecuperados extends StatelessWidget {

  final HomeController homeController;

  CardPaisRecuperados({this.homeController});

  @override
  Widget build(BuildContext context) {
    return Card(
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
              style: TextStyle(
                  color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Obx(() {
                return homeController.isLoading.value
                    ? CircularProgressIndicator()
                    : Text(
                  homeController.pais.value.recuperados.toString(),
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 30),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
