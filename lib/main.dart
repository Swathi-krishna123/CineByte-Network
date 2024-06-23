import 'package:cinebyte_network/customClasses/bottomnav.dart';
import 'package:cinebyte_network/screens/firstpage.dart';
import 'package:cinebyte_network/screens/home_page.dart';
import 'package:cinebyte_network/screens/login.dart';
import 'package:cinebyte_network/screens/register.dart';
import 'package:cinebyte_network/screens/startingdate.dart';
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
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: const AppBarTheme(color:Colors.transparent),
            ),
            
        initialRoute: '/login',
        routes: {
          '/': (context) => const Firstpage(),
          '/startingdate': (context) => const StartingDate(),
          '/register': (context) => const RegisterPage(),
          '/login': (context) => const LoginPage(),
          '/homepage': (context) => const HomePage(),
          '/CustomBottomNavigationBar':(context)=>const CustomBottomNavigationBar()
        });
  }
}