import 'package:flutter/material.dart';
import 'package:task_1_project/login_page/Login_Page.dart';
import 'package:task_1_project/pageview/Page_View.dart';
import 'package:task_1_project/register_page/Register_Page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginPage(),
      //home: const RegisterPage(),
      home: const PView() ,
    );
  }
}


