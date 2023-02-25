import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widget/button_widget.dart';
import '../widget/textfield_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

// To get text from field when user fill it
TextEditingController user_firstname = TextEditingController();
TextEditingController user_lastname = TextEditingController();
TextEditingController user_email = TextEditingController();
TextEditingController user_password = TextEditingController();

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    // To solve keyboard overflow
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      // แก้ปัญหาแอพขึ้นไปบังด้านบนสเตตัสใน ทรศ
      child: SafeArea(
        // Background of the App
        child: Scaffold(
          body: Container(
            // ทำให้หน้าจอตรง background ยาวตามขนาดจอ
            width: double.infinity,
            height: double.infinity,
            // ตกแต่งพื้นหลังหน้าจอโดยใส่รูป backgroud
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
            ),
            // เพิ่ม ScrollView ใช้ในกรณีฟังก์ชั่นในหน้านั้นตายตัว ListView สำหรับโหลดข้อมูลขึ้นมาเรื่อยเมื่อเลื่อนลงมา
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      // Make 3 column seperate
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          iconSize: 35,
                          color: HexColor("#3CB189"),
                          icon: ImageIcon(Svg('assets/icons/back.svg')),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Please enter the information \nbelow to access.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 40),
                  Image(image: Svg('assets/icons/signup.svg')),
                  SizedBox(height: 45),
                  WidgetTextField(
                    text: 'First Name',
                    controller: user_firstname,
                    obscureText: false,
                    maxLineTextField: 1,
                    textFieldHeight: 60,
                    horizontalSize: 45,
                  ),
                  SizedBox(height: 20),
                  WidgetTextField(
                    text: 'Last Name',
                    controller: user_lastname,
                    obscureText: false,
                    maxLineTextField: 1,
                    textFieldHeight: 60,
                    horizontalSize: 45,
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 60),
                  WidgetButton(
                    textButton: 'SIGN UP',
                    // Function to change page
                    press: () {
                      Navigator.pop(context);
                    },
                    horizontalButtonSize: 45,
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
