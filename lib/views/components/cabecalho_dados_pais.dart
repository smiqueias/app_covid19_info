import 'package:app_covid19/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CabecalhoDadosPais extends StatelessWidget {

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(child: Obx(() {
      return _homeController.isLoading.value
          ? CircularProgressIndicator()
          : Padding(
        padding: EdgeInsets.all(8),
        child: Obx(
            () => Image.network(
              _homeController.pais.value.urlBandeira,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
        )
      );
    }));
  }
}
