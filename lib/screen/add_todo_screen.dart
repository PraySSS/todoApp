import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/screen/signup_screen.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widget/appbar_widget.dart';
import '../widget/button_widget.dart';
import '../widget/text_widget.dart';
import '../widget/textfield_widget.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({super.key});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

//Mock switch value
bool switchValue = false;

class _AddTodoScreenState extends State<AddTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: WidgetAppbar(
            hexColor: "##FFFFFF",
            svgUri: 'assets/icons/back.svg',
            appbarTitle: 'Add Your Todo',
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        WidgetTextField(
                          text: 'Title',
                          obscureText: false,
                          maxLineTextField: 1,
                          textFieldHeight: 60,
                          horizontalSize: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: WidgetTextField(
                            text: 'Description',
                            obscureText: false,
                            maxLineTextField: 7,
                            textFieldHeight: 170,
                            horizontalSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  W500Text(
                                    text: 'Success',
                                    textSize: 16,
                                    hexTextColor: '#0D7A5C',
                                  ),
                                  //Switch button
                                  CupertinoSwitch(
                                    // This bool value toggles the switch.
                                    value: switchValue,
                                    activeColor: HexColor('#53CD9F'),
                                    onChanged: (bool? value) {
                                      // This is called when the user toggles the switch.
                                      setState(() {
                                        switchValue = value ?? true;
                                      });
                                    },
                                  ),

                                  //end
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Move outside SingleChildScrollView cause it can't move to bottom
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: WidgetButton(
                    textButton: 'Save',
                    press: () {
                      Navigator.pop(context);
                    },
                    horizontalButtonSize: 20,
                  ),
                )
                //End Button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
