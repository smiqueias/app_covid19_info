import 'package:app_covid19/models/mundo_model.dart';
import 'package:app_covid19/models/pais_model.dart';
import 'package:app_covid19/repositories/covidapi_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  CovidRepository _covidRepository = CovidRepository();

  @override
  void onInit() {
    fetchWorldCases();
    fetchCountryCases();
    super.onInit();
  }
  final mundo = Mundo().obs;

  final pais = Pais().obs;

  final currentIndex = 1.obs;

  final isLoading = true.obs;

  final nomePais = TextEditingController().obs;



  fetchWorldCases() async {
    mundo.value = await _covidRepository.getMundo();
    isLoading.value = false;
  }

  changePage(int index) {
    currentIndex.value = index;
  }

  fetchCountryCases({String nomePais = 'brazil'}) async {
    pais.value = await _covidRepository.getPais(pais: nomePais);
    isLoading.value = false;
  }
}