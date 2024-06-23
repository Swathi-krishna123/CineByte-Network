import 'package:cinebyte_network/custom_attribues.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage('assets/first page.png'),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heading("CineByte Network"),
              Text('“I would rather die of passion than of boredom.”',
                  style: GoogleFonts.fugazOne(
                      color: const Color(0xffF4D193),
                      textStyle: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w400)))
            ],
          ),
        ),
      ),
    );
  }
}
