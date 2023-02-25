import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_learning/controller/login_controller.dart';
import 'package:flutter_learning/screen/listview_screen.dart';
import 'package:flutter_learning/screen/signup_screen.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../widget/button_widget.dart';
import '../widget/textfield_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //To get data from field
  TextEditingController user_email = TextEditingController();
  TextEditingController user_password = TextEditingController();
  loginController login = loginController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      'SIGN IN',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Please enter the information \nbelow to access.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 40),
                  Image(image: Svg('assets/icons/signin.svg')),
                  SizedBox(height: 40),
                  WidgetTextField(
                    text: 'Email',
                    controller: user_email,
                    obscureText: false,
                    maxLineTextField: 1,
                    textFieldHeight: 60,
                    horizontalSize: 45,
                  ),
                  SizedBox(height: 20),
                  WidgetTextField(
                    text: 'Password',
                    controller: user_password,
                    obscureText: true,
                    maxLineTextField: 1,
                    textFieldHeight: 60,
                    horizontalSize: 45,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 75),
                  WidgetButton(
                    textButton: 'SIGN IN',
                    press: () {
                      login.login(user_email.text, user_password.text, context);
                      /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListViewScreen(user: null,),
                        ),
                      ); */
                    },
                    horizontalButtonSize: 45,
                  ),
                  SizedBox(height: 20),
                  WidgetButton(
                    textButton: 'SIGN UP',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ),
                      );
                    },
                    horizontalButtonSize: 45,
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
