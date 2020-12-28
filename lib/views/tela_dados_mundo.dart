import 'package:app_covid19/views/components/lista_cards_mundo.dart';
import 'package:flutter/material.dart';

class TelaDadosMundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: Center(
              child: Text(
                'INFORMAÇÕES COVID-19',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        CardsDadosMundo()
      ],
    );
  }
}
