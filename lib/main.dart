import 'package:flutter/material.dart';
import 'package:login_ui/pages/HomePage.dart';
import 'package:login_ui/pages/loginPage.dart';
import 'package:login_ui/pages/sign_up_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid:  false,
 home: LoginPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        SignUpPage.id: (context) => SignUpPage(),
      }
    );

  }
}

