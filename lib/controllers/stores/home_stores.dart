import 'package:app_covid19/models/mundo_model.dart';
import 'package:app_covid19/models/pais_model.dart';
import 'package:app_covid19/repositories/covidapi_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_stores.g.dart';


class HomeController =  HomeStore with _$HomeController;

abstract class HomeStore with Store {

  HomeStore() {
    fetchAllCasesOfWordl();
  }

  @observable
  CovidRepository _covidRepository = CovidRepository();

  @action
  fetchAllCasesOfWordl() async {
    return _covidRepository.getMundo();
  }



}