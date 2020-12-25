import 'package:app_covid19/repositories/covidapi_repository.dart';
import 'package:app_covid19/views/components/info_mundo.dart';
import 'package:app_covid19/views/informacoes_mundo.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_stores.g.dart';

class HomeController =  HomeStore with _$HomeController;

abstract class HomeStore with Store {

  HomeStore() {
    fetchAllCasesOfWordl();
  }

  @observable
  int currentIndex = 0;

  @observable
  final navegacao = [
    InfoDadosMundo(),
    Center(child: Text('Pais'))
  ];

  @observable
  CovidRepository _covidRepository = CovidRepository();

  @action
  fetchAllCasesOfWordl() async {
    try {
      return await _covidRepository.getMundo();
    } catch (e) {

    }
  }

  @action
  changePage(int index) {
    currentIndex = index;
  }

  @action
  changeScreen(int index) {
    return navegacao[index];
  }


}