import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:cinebyte_network/user/menupage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScriptSchedule extends StatefulWidget {
  const ScriptSchedule({super.key});

  @override
  State<ScriptSchedule> createState() => _ScriptScheduleState();
}

class _ScriptScheduleState extends State<ScriptSchedule> {
  // List<Map> scripts=[{}];
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height * 0.7;
    // final width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      body: Expanded(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                      // width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.23,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: <Color>[
                            Color(0xffE7B588),
                            Color(0xffE5C8AE),
                            Color(0xffFFEFE1),
                          ]),
                          borderRadius: BorderRadius.circular(25)),

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  'Script 1',
                                  style: GoogleFonts.acme(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 10),
                                child: Text(
                                  'Zoom',
                                  style: GoogleFonts.acme(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  color: color2,
                                ),
                              ),
                              Text(
                                'September 25',
                                style: GoogleFonts.acme(
                                    color: Colors.black, fontSize: 15),
                              )
                            ],
                          ),
                          Divider(
                            indent: 20,
                            endIndent: 20,
                            color: color1,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '1',
                                    style: GoogleFonts.acme(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'hr',
                                    style: GoogleFonts.acme(
                                        fontSize: 15, color: color1),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Start',
                                    style: GoogleFonts.acme(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  Text(
                                    '8.30AM',
                                    style: GoogleFonts.acme(
                                        fontSize: 15, color: color1),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'End',
                                    style: GoogleFonts.acme(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  Text(
                                    '9.30AM',
                                    style: GoogleFonts.acme(
                                        fontSize: 15, color: color1),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 3),
          ),
        ),
      ),
    );
  }
}
