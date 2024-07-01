import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:cinebyte_network/custom_attribues.dart';
import 'package:flutter/material.dart';

class StartingDate extends StatelessWidget {
  const StartingDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/first page.png'),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heading("Get Started!"),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {},
                child: ContainerButton(
                  text: "login",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {},
                child: ContainerButton(
                  text: "Register",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
