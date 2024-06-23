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
    final searchwidth = MediaQuery.of(context).size.width * 0.8;
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
        appBar: appBar('Menu', Icons.arrow_back_ios_new),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: searchwidth,
                child: SearchBar(
                  textInputAction: TextInputAction.search,
                  textStyle: const WidgetStatePropertyAll(TextStyle(
                      color: Colors.white, fontSize: 20, letterSpacing: 1)),
                  hintText: 'Search Artists,Groups,etc..',
                  hintStyle: WidgetStatePropertyAll(GoogleFonts.fugazOne(
                      color: Colors.white54, fontSize: 15)),
                  elevation: const WidgetStatePropertyAll(17),
                  backgroundColor: WidgetStatePropertyAll(color2),
                  leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white70,
                        size: 32,
                      )),
                ),
              ),
              SizedBox(height: 50,),
              Expanded(
                child: SizedBox(width: searchwidth,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 60,
                              crossAxisCount: 2),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 10,
                          width: 10,
                          color: Colors.blue,
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
