import 'package:cinebyte_network/custom_attribues.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color color2 = const Color(0xff51555D);

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    // final searchwidth = MediaQuery.of(context).size.width * 0.8;
    final containerwidth = MediaQuery.of(context).size.width * 2;
    final containerheight = MediaQuery.of(context).size.height * 2;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/first page.png'),
        ),
      ),
      child: Scaffold(
        appBar: appBar('Menu'),
        body: Center(
          child: Column(
            children: [
              // SizedBox(
              //   width: searchwidth,
              //   child: SearchBar(
              //     textInputAction: TextInputAction.search,
              //     textStyle: const WidgetStatePropertyAll(TextStyle(
              //         color: Colors.white, fontSize: 20, letterSpacing: 1)),
              //     hintText: 'Search Artists,Groups,etc..',
              //     hintStyle: WidgetStatePropertyAll(GoogleFonts.fugazOne(
              //         color: Colors.white54, fontSize: 15)),
              //     elevation: const WidgetStatePropertyAll(17),
              //     backgroundColor: WidgetStatePropertyAll(color2),
              //     leading: IconButton(
              //         onPressed: () {},
              //         icon: const Icon(
              //           Icons.search,
              //           color: Colors.white70,
              //           size: 32,
              //         )),
              //   ),
              // ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            // crossAxisSpacing: 30,
                            mainAxisSpacing: 10,
                            crossAxisCount: 1),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: containerheight,
                        width: containerwidth,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: <Color>[
                              Color(0xffE7B588),
                              Color(0xffE5C8AE),
                              Color(0xffFFEFE1)
                            ]),
                            borderRadius: BorderRadius.circular(30)),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
