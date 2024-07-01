import 'package:cinebyte_network/custom_attribues.dart';
import 'package:cinebyte_network/user/menupage.dart';
import 'package:cinebyte_network/user/script_schedule.dart';
import 'package:cinebyte_network/user/shooting_schedule.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
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
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: appBar(
            'Schedules',
            tabbar: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  gradient: const LinearGradient(colors: <Color>[
                    Color(0xffE7B588),
                    Color(0xffE5C8AE),
                    Color(0xffFFEFE1)
                  ]),
                  borderRadius: BorderRadius.circular(30)),
              labelColor: Colors.black,
              labelStyle: GoogleFonts.fugazOne(fontSize: 20),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: GoogleFonts.fugazOne(fontSize: 20),
              dividerColor: Colors.transparent,
              tabs: const [
                Tab(
                  text: 'Scripts',
                ),
                Tab(
                  text: 'Shootings',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [ScriptSchedule(), ShottingSchedule()]),
        ),
      ),
    );
  }
}
