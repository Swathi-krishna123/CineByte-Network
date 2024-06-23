import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:cinebyte_network/custom_attribues.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginkey = GlobalKey<FormState>();
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage('assets/first page.png'),
          ),
        ),
        child: Center(
          child: Form(
            key: _loginkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heading("LOGIN"),
                const SizedBox(
                  height: 20,
                ),
                textFormField(_usernamecontroller, "Username", Icons.person),
                textFormField(_passwordcontroller, 'Password', Icons.lock),
                Padding(
                  padding: EdgeInsets.only(left: width),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password",
                      style: GoogleFonts.fugazOne(
                          textStyle: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      if (_loginkey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(context,
                            '/CustomBottomNavigationBar', (route) => false);
                      }
                      {}
                    },
                    child: ContainerButton(
                      text: "Login",
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: GoogleFonts.fugazOne(
                          textStyle: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/register'),
                      child: Text(
                        "Register Here",
                        style: GoogleFonts.fugazOne(
                            color: const Color(0xffFFD29F)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
