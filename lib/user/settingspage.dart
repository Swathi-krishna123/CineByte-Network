import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:cinebyte_network/custom_attribues.dart';
import 'package:cinebyte_network/user/menupage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsdPage extends StatefulWidget {
  const SettingsdPage({super.key});

  @override
  State<SettingsdPage> createState() => _SettingsdPageState();
}

class _SettingsdPageState extends State<SettingsdPage> {
  @override
  Widget build(BuildContext context) {
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
        appBar: appBar('Settings'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
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
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/userprofile'),
                child: Buttoncontainer(
                    leadingicon: Icons.person_pin_outlined, title: 'Profile'),
              ),
              Buttoncontainer(leadingicon: Icons.call, title: 'Change Number'),
              Buttoncontainer(
                  leadingicon: Icons.help_outline, title: 'Help Center'),
              Buttoncontainer(
                  leadingicon: Icons.logout_rounded, title: 'Logout')
            ],
          ),
        ),
      ),
    );
  }
}
