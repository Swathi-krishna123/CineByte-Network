import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

heading(String text) {
  return Text(text,
      style: GoogleFonts.fugazOne(
          color: const Color(0xffF4D193),
          textStyle:
              const TextStyle(fontSize: 36, fontWeight: FontWeight.w400)));
}

textFormField(TextEditingController controller, String text, IconData icon) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value!.isEmpty) {
        return "requird $text";
      }
      return null;
    },
    onTap: () {},
    cursorColor: Colors.white,
    style: const TextStyle(color: Colors.white),
    textAlign: TextAlign.start,
    decoration: InputDecoration(
      constraints: const BoxConstraints(maxWidth: 250),
      prefixIcon: Icon(icon),
      hintText: text,
      hintStyle: GoogleFonts.fugazOne(
        color: const Color(0xffBDBDBD),
      ),
    ),
  );
}

appBar(String text, {IconData? icon, tabbar}) {
  return AppBar(
    bottom: tabbar,
    toolbarHeight: 100,
    leadingWidth: 160,
    actionsIconTheme: const IconThemeData(color: Colors.white),
    leading: Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: GoogleFonts.fugazOne(color: Colors.white, fontSize: 20),
        ),
      ],
    ),
    actions: [
      Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(icon));
      }),
      SizedBox(
        width: 30,
      )
    ],
  );
}
