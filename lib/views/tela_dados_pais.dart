// import 'package:app_covid19/controllers/stores/home_stores.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
//
// class TelaDadosBrasil extends StatelessWidget {
//
//   final HomeController _homeController = HomeController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _homeController.fetchAllCasesOfOneCountry(),
//         builder: (context, snapshot) {
//             if (snapshot.connectionState != ConnectionState.done) {
//               return Center(child: CircularProgressIndicator());
//             } else {
//               return Card(
//                 child: Column(
//                   children: [
//                     Observer(
//                       builder: (_) => Text(snapshot.data.casos),
//                     )
//                   ],
//                 ),
//               );
//             }
//         },
//       )
//     );
//   }
// }
