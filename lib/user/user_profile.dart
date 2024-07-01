import 'package:cinebyte_network/custom_attribues.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
        appBar: appBar('User Profile', icon: Icons.arrow_back_ios_new),
      ),
    );
  }
}
