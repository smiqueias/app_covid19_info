import 'package:app_covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardTotalMortes extends StatelessWidget {
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
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
            Obx(() {
              return _homeController.isLoading.value
                  ? CircularProgressIndicator()
                  : Text(
                      _homeController.mundo.value.mortes.toString(),
                      style: TextStyle(color: Colors.grey[350], fontSize: 30),
                    );
            }),
          ],
        ),
      ),
      color: Colors.redAccent,
    );
  }
}
