import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingDate extends StatelessWidget {
  const StartingDate({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.07;
    double width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Get Started!',
                style: GoogleFonts.fugazOne(
                    color: const Color(0xffF4D193),
                    textStyle: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.w400))),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: <Color>[
                    Color(0xffE7B588),
                    Color(0xffE5C8AE),
                    Color(0xffFFEFE1)
                  ]),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.fugazOne(
                      color: const Color(0xff2D3037),
                      textStyle:
                          const TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: <Color>[
                    Color(0xffE7B588),
                    Color(0xffE5C8AE),
                    Color(0xffFFEFE1)
                  ]),
                  borderRadius: BorderRadius.circular(25)),
                  child: Center(
                child: Text(
                  'Register',
                  style: GoogleFonts.fugazOne(
                      color: const Color(0xff2D3037),
                      textStyle:
                          const TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
