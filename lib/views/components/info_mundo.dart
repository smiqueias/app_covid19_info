import 'package:flutter/material.dart';
import 'card_paises_afetados.dart';
import 'card_total_infectados.dart';
import 'card_total_mortes.dart';
import 'card_total_recuperados.dart';

class CardsDadosMundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ListView(
        children: [
          CardTotalInfectados(),
          CardTotalRecuperados(),
          CardTotalPaisesAfetados(),
          CardTotalMortes()
        ],
      ),
    );
  }
}
