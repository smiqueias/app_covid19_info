import 'package:app_covid19/views/components/info_mundo.dart';
import 'package:app_covid19/controllers/stores/home_stores.dart';
import 'package:app_covid19/views/informacoes_mundo.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'components/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final HomeController _homeController = HomeController();



  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
          backgroundColor: Color.fromRGBO(58, 23, 99, 1.0),
          body: _homeController.currentIndex == 0 ? InfoDadosMundo()
          : Center(child: Text('Pais'),),
          bottomNavigationBar: Observer(
            builder: (_) => BottomNavigationBar(
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
                currentIndex: _homeController.currentIndex
            ),
          )
        ),
    );
  }

}
