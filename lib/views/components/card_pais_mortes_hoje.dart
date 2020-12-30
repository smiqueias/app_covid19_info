import 'package:app_covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPaisMortesHoje extends StatelessWidget {

  final HomeController homeController;

  CardPaisMortesHoje({this.homeController});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  homeController.pais.value.mortesHoje.toString(),
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
