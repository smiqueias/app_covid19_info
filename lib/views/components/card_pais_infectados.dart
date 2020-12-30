import 'package:app_covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';

class CardPaisInfectados extends StatelessWidget {

  final HomeController homeController;

  const CardPaisInfectados({this.homeController});

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
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              ' Total de\n Infectados ',
              style: TextStyle(
                  color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Obx(() {
                   return Text(
                  homeController.pais.value.casos.toString(),
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
