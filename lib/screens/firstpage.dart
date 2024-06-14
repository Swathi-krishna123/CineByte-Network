import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('CineByte Network',
                style: GoogleFonts.fugazOne(
                    color: const Color(0xffF4D193),
                    textStyle: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.w400))),
            Text('“I would rather die of passion than of boredom.”',
                style: GoogleFonts.fugazOne(
                    color: const Color(0xffF4D193),
                    textStyle:
                        const TextStyle(fontSize: 13, fontWeight: FontWeight.w400)))
          ],
        ),
      ),
    );
  }
}
