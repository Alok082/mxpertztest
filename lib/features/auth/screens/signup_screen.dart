import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mxpertztest/features/firebase/firebasestuff.dart';
import 'package:mxpertztest/shared/widgets/custom_text_field.dart';
import 'package:mxpertztest/shared/widgets/custombutton.dart';
import 'package:mxpertztest/shared/widgets/helper.dart';

class SignUpScreen extends StatefulWidget {
  static const id = 'SignUpScreen';
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

// ignore: camel_case_types
class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController useraname = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  GlobalKey formkey = GlobalKey();

  bool _agreeTerms = false;
  void clear() {
    useraname.clear();
    password.clear();
    emailcontroller.clear();
    confirmpass.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        // drawerEnableOpenDragGesture: false,
        // extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(255, 1, 29, 69),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 248, 206, 88),
          title: const Text(
            "Register with Skenu",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CustomTextField(
                      controller: useraname,
                      hinttext: "Username",
                      obscureText: false,
                      validator: (value) {
                        return;
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CustomTextField(
                      controller: emailcontroller,
                      hinttext: "Email",
                      obscureText: false,
                      validator: (value) {
                        return;
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CustomTextField(
                      controller: password,
                      hinttext: "Password",
                      obscureText: false,
                      validator: (value) {
                        return;
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CustomTextField(
                      controller: confirmpass,
                      hinttext: "Confirm password",
                      obscureText: false,
                      validator: (value) {
                        return;
                      },
                    )),
                Row(
                  children: <Widget>[
                    Checkbox(
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (!states.contains(MaterialState.selected)) {
                          return const Color.fromARGB(255, 216, 219, 224);
                        }
                        return null;
                      }),
                      activeColor: const Color.fromARGB(255, 216, 219, 224),
                      value: _agreeTerms,
                      onChanged: (bool? value) {
                        setState(() {
                          _agreeTerms = value!;
                        });
                      },
                    ),
                    const Text(
                      'Agree to terms and conditions',
                      style:
                          TextStyle(color: Color.fromARGB(255, 216, 219, 224)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CostomButton(
                    button_name: "Register",
                    bottoncolor: Color.fromARGB(255, 0, 21, 51),
                    buttonaction: () {
                      FirebaseServices.signup(
                              emailcontroller.text.trim(), password.text.trim())
                          .then((value) {
                        if (value != null) {
                          setState(() {
                            DynamicHelperWidget.show("success");
                            clear();
                          });
                        }
                      });
                      // Navigator.pushNamed(context, SignUpScreen.id);
                    },
                    height: 0.06,
                    textcolor: Colors.white,
                    width: 0.7,
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.all(10),
                //   height: mq.height*,
                //   width: 400,
                //   child: ElevatedButton(
                //     style: ButtonStyle(
                //         foregroundColor:
                //             MaterialStateProperty.all<Color>(Colors.white),
                //         backgroundColor: MaterialStateProperty.all<Color>(
                //             const Color.fromARGB(255, 0, 21, 51)),
                //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //             RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(5),
                //         ))),
                //     onPressed: null,
                //     child: const Text("REGISTER", style: TextStyle(fontSize: 14)),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
