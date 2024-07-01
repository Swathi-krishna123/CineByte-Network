import 'package:flutter/material.dart';

class ShottingSchedule extends StatefulWidget {
  const ShottingSchedule({super.key});

  @override
  State<ShottingSchedule> createState() => _ShottingScheduleState();
}

class _ShottingScheduleState extends State<ShottingSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                      // width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle 8.png')),
                          borderRadius: BorderRadius.circular(25)),
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
