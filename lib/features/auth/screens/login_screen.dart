import 'package:flutter/material.dart';
import 'package:mxpertztest/features/bottomnavbar/bottom_nav_bar.dart';
import 'package:mxpertztest/features/firebase/firebasestuff.dart';
import 'package:mxpertztest/main.dart';

class LoginScreen extends StatefulWidget {
  static const id = "LoginScreen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// ignore: camel_case_types
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 50, right: 18, left: 18),
            height: mq.height * 0.5,
            width: mq.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Spacer(
                    flex: 2,
                  ),
                  // Adjust the space as needed
                  const Text(
                    'Sign in to your account',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 43, 66, 99)),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Theme(
                    data: ThemeData(
                      primaryColor: Colors.red,
                      primaryColorDark: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Email',
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 250, 223, 145)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Space between textfields
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 250, 223, 145)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 15), // Space between textfield and button
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 420,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 1, 29, 69)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      onPressed: () {
                        FirebaseServices.signin(
                            emailcontroller.text, passwordcontroller.text);
                        Navigator.pushNamed(context, Bottomnavigationbar.id);
                      },
                      child:
                          const Text("LOG IN", style: TextStyle(fontSize: 14)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: const Text(
                      'FORGET PASSWORD',
                      style:
                          TextStyle(color: Color.fromARGB(255, 148, 148, 148)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
