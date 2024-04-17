import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mxpertztest/features/auth/screens/login_screen.dart';
import 'package:mxpertztest/features/auth/screens/signup_screen.dart';
import 'package:mxpertztest/features/bottomnavbar/bottom_nav_bar.dart';
import 'package:mxpertztest/shared/widgets/helper.dart';

import 'features/auth/screens/loginsignupscreen.dart';

late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA-tLNW8dk5lKxVmXQDngOdxUYIz_hU7i0",
            appId: "1:1028012959477:android:a9babbee9aa61565b987bc",
            projectId: "mxpertztest",
            messagingSenderId: "1028012959477"));
    runApp(const MyApp());
  } catch (e) {
    DynamicHelperWidget.show("$e");
    // Handle initialization error
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginSignUP(),
        routes: {
          LoginSignUP.id: (c) => LoginSignUP(),
          LoginScreen.id: (c) => LoginScreen(),
          SignUpScreen.id: (c) => SignUpScreen(),
          Bottomnavigationbar.id: (c) => Bottomnavigationbar()
        });
  }
}
