import 'package:app_covid19/models/mundo_model.dart';
import 'package:app_covid19/repositories/covidapi_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  CovidRepository _covidRepository = CovidRepository();

  final mundo = Mundo().obs;

  final currentIndex = 0.obs;

  final isLoading = true.obs;

  fetchWorldCases() async {
    mundo.value = await _covidRepository.getMundo();
    isLoading.value = false;
  }

  changePage(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    fetchWorldCases();
    super.onInit();
  }


}