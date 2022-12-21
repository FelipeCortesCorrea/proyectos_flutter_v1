import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

class Authpage extends StatefulWidget {
  const Authpage({Key? key}) :super(key: key);

  @override
  State<Authpage> createState() => _AuthPageState();
}

class _AuthPageState extends State<Authpage> {

  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens);
    }else{
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}