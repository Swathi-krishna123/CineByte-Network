import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Color color1 = Color(0xff2D3037);

class ContainerButton extends StatelessWidget {
  String? text;

  ContainerButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.07;
    double width = MediaQuery.of(context).size.width * 0.8;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: <Color>[
            Color(0xffE7B588),
            Color(0xffE5C8AE),
            Color(0xffFFEFE1)
          ]),
          borderRadius: BorderRadius.circular(25)),
          
      child: Center(
        child: Text(
          text!,
          style: GoogleFonts.fugazOne(
              color: color1,
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////
class Buttoncontainer extends StatefulWidget {
  IconData? leadingicon;
  String? title;

  Buttoncontainer({
    super.key,
    required this.leadingicon,
    required this.title,
  });

  @override
  State<Buttoncontainer> createState() => _ButtoncontainerState();
}

class _ButtoncontainerState extends State<Buttoncontainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.065;
    double width = MediaQuery.of(context).size.width * 0.8;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: <Color>[
            Color(0xffE7B588),
            Color(0xffE5C8AE),
            Color(0xffFFEFE1)
          ]),
          borderRadius: BorderRadius.circular(25)),
      child: ListTile(
        leading: CircleAvatar(
          // radius: 20,
          backgroundColor: Color.fromARGB(255, 226, 171, 123),
          child: Center(
              child: Icon(
            widget.leadingicon,
            color: color1,
            size: 30,
          )),
        ),
        title: Text(widget.title!,style: GoogleFonts.fugazOne(color: Colors.black,fontSize: 17),),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_circle_right_outlined,color: color1,)),
      ),
    );
  }
}
