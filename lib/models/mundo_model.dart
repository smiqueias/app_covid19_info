class Mundo {

  final int casos;
  final int mortes;
  final int recuperados;
  final int paisesAfetados;

  Mundo({this.casos, this.mortes, this.recuperados, this.paisesAfetados});

  factory Mundo.fromJson(Map <String, dynamic> json) {

    return Mundo(
      casos: json['cases'],
      mortes: json['deaths'],
      paisesAfetados: json['affectedCountries'],
      recuperados: json['recovered'],
    );
  }

}