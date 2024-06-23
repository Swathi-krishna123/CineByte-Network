import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:cinebyte_network/screens/gallerypage.dart';
import 'package:cinebyte_network/screens/home_page.dart';
import 'package:cinebyte_network/screens/menupage.dart';
import 'package:cinebyte_network/screens/schedulepage.dart';
import 'package:cinebyte_network/screens/settingspage.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentindex = 0;
  List<Widget> pages = [
    const HomePage(),
    const MenuPage(),
    const GalleryPage(),
    const SchedulePage(),
    const SettingsdPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(selectedIconTheme: IconThemeData(size: 35, color: color1),
        elevation: 10,items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Color.fromARGB(255, 16, 16, 16)),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Color.fromARGB(255, 16, 16, 16)),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Gallery',
              backgroundColor: Color.fromARGB(255, 16, 16, 16)),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              label: 'Schedules',
              backgroundColor: Color.fromARGB(255, 16, 16, 16)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Color.fromARGB(255, 16, 16, 16)),
        ], currentIndex: _currentindex,
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },),
    );
  }
}
