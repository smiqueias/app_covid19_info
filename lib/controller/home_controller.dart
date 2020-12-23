
import 'package:app_covid19/models/mundo_model.dart';
import 'package:app_covid19/repositories/covidapi_repository.dart';

class HomeController {

  final CovidRepository _covidRepository = CovidRepository();


  fetchAllCasesOfWorld() {
    return _covidRepository.getMundo();
  }


}