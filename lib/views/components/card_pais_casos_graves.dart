import 'package:app_covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPaisCasosGraves extends StatelessWidget {

  final HomeController homeController;

  CardPaisCasosGraves({this.homeController});

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
              Icons.error,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              ' Casos Graves ',
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
                  homeController.pais.value.criticos.toString(),
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
