import 'package:app_covid19/models/mundo_model.dart';
import 'package:app_covid19/models/pais_model.dart';
import 'package:dio/dio.dart';

class CovidRepository {

  final Dio _dio = Dio();
  String apiBaseUrl = 'https://corona.lmao.ninja';

   getMundo() async {

    Response response = await _dio.get('$apiBaseUrl/v3/covid-19/all');

    if(response.statusCode != 200) {
      throw Exception(
        'Ocorreu um problema. Tente novamente. ${response.statusCode}',
      );
    }
    else {
      return Mundo.fromJson(response.data);
    }

  }

  getPais({String pais}) async {

    Response response = await _dio.get('https://corona.lmao.ninja/v3/covid-19/countries/$pais');

    if (response.statusCode != 200) {
      throw Exception('Ocorreu um problema. Tente novamente. ${response.statusCode}');
    }

    else {
      return Pais.fromJson(response.data);
    }

  }

}