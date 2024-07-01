import 'package:cinebyte_network/customClasses/containerbutton.dart';
import 'package:cinebyte_network/custom_attribues.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _registerkey = GlobalKey<FormState>();
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
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
          child: Form(
            key: _registerkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heading("REGISTER HERE"),
                const SizedBox(
                  height: 20,
                ),
                textFormField(_usernamecontroller, "Username", Icons.person),
                textFormField(_emailcontroller, "Email", Icons.email),
                textFormField(_passwordcontroller, "Password", Icons.lock),
                textFormField(
                    _confirmpasswordcontroller, "Confirm Password", Icons.lock),
                const SizedBox(
                  height: 35,
                ),
                InkWell(
                    onTap: () {
                      if (_registerkey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/', (route) => false);
                      }
                    },
                    child: ContainerButton(
                      text: "Register",
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
                      onTap: () => Navigator.pushNamed(context, '/login'),
                      child: Text(
                        "Login Here",
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
