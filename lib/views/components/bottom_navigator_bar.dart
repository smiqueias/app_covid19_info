import 'package:app_covid19/controllers/stores/home_stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BottomNavigatorBar extends StatelessWidget {

  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {

    return Observer(
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
    );
  }
}
