import 'package:app_covid19/controllers/home_controller.dart';
import 'package:app_covid19/views/tela_dados_mundo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Home extends StatelessWidget {

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => Scaffold(
            backgroundColor: Color.fromRGBO(58, 23, 99, 1.0),
            body: _homeController.currentIndex == 0 ? TelaDadosMundo()
            : Center(child: Text('Pais'),),
            bottomNavigationBar: BottomNavigationBar(
                  unselectedItemColor: Colors.grey,
                  selectedItemColor:  Colors.white,
                  backgroundColor: Colors.deepPurple[600],
                  selectedLabelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.group_work),
                      label: 'Mundo',
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(Icons.flag),
                      label: 'País',
                    ),
                  ],
                  elevation: 2,
                  onTap: (index) {
                    _homeController.changePage(index);
                  },
                  currentIndex: _homeController.currentIndex.value
              ),
          ),
    );
  }

}
