import 'package:flutter/material.dart';
import 'package:mxpertztest/features/auth/screens/login_screen.dart';
import 'package:mxpertztest/features/auth/screens/signup_screen.dart';
import 'package:mxpertztest/main.dart';
import 'package:mxpertztest/shared/widgets/custombutton.dart';

class LoginSignUP extends StatefulWidget {
  static const id = "LoginSignUP";
  LoginSignUP({super.key});

  @override
  State<LoginSignUP> createState() => _LoginSignUPState();
}

class _LoginSignUPState extends State<LoginSignUP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CostomButton(
            button_name: "LOG IN WITH EMAIL",
            buttonaction: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            bottoncolor: Color.fromARGB(
              255,
              248,
              206,
              88,
            ),
            height: 0.07,
            width: 0.9,
          ),
          SizedBox(
            height: mq.height * 0.02,
          ),
          CostomButton(
            button_name: "Register",
            buttonaction: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            },
            height: 0.07,
            textcolor: Colors.white,
            width: 0.9,
          ),
          SizedBox(
            height: mq.height * 0.02,
          ),
        ],
      ),
    );
  }
}
