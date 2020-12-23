
import 'package:app_covid19/models/mundo_model.dart';

class Pais extends Mundo {

  final String nome;
  final int mortesHoje;
  final int criticos;
  final String urlBandeira;

  Pais({this.nome,
    this.mortesHoje,
    this.criticos,
    this.urlBandeira,
    int casos,
    int mortes,
    int recuperados}
      ) : super(casos: casos, recuperados: recuperados, mortes: mortes);

  factory Pais.fromJson( Map<String, dynamic> json ) {
    return Pais(
      casos: json['cases'],
      mortes: json['deaths'],
      recuperados: json['recovered'],
      mortesHoje: json['todayDeaths'],
      nome: json['country'],
      criticos: json['critical'],
      urlBandeira: json['countryInfo']['flag'],
    );
  }


}