import 'package:cinebyte_network/screens/firstpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "CINEBYTE NETWORK",
        theme: ThemeData(scaffoldBackgroundColor:  const Color(0xff2D3037)),
        initialRoute: '/',
        routes: {
          '/': (context) => Firstpage(),
        });
  }
}

/////////////////////////////////////////////////////////////////////////////////
// class Background extends StatelessWidget {
//   const Background({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double firstcirclewidth=MediaQuery.of(context).size.width*0.4;
//     double firstcircleheight=MediaQuery.of(context).size.height*0.2;
//     return Scaffold(
//         backgroundColor: const Color(0xff2D3037),
//         body: Stack(
//           children: [
//             Container(
//               height: firstcircleheight,
//               width: firstcirclewidth,
//               decoration: const BoxDecoration(
//                   color: Color(0xff36393F), shape: BoxShape.circle),
//             ),
//             Positioned(
//                 bottom: 300,
//                 right: 100,
//                 child: Container(
//                   height: 150,
//                   width: 150,
//                   decoration: const BoxDecoration(
//                       color: Color(0xff36393F), shape: BoxShape.circle),
//                 )),
//             Positioned(
//                 bottom: -150,
//                 left: 60,
//                 child: Container(
//                   height: 390,
//                   width: 390,
//                   decoration: const BoxDecoration(
//                       color: Color(0xff36393F), shape: BoxShape.circle),
//                 ))
//           ],
//         ));
//   }
// }
