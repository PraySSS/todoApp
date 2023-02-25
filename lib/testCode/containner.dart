import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/screen/signup_screen.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widget/appbar_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

bool isChecked = false;

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: WidgetAppbar(
            hexColor: "##FFFFFF",
            svgUri: 'assets/icons/back.svg',
            appbarTitle: 'Your Todo',
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
                child: Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    spreadRadius: -1,
                    blurRadius: 12,
                    color: Color.fromRGBO(155, 155, 155, 0.73),
                  )
                ],
              ),
              child: Card(
                //Border radius of rh box
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                //To reduce padding horizontal,vertical
                child: Transform.translate(
                  offset: Offset(-15, -10),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    leading: Checkbox(
                      shape: CircleBorder(),
                      activeColor: HexColor('#1DC9A0'),
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        'ListTile',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    subtitle:
                        Text('A sufficiently long subtitle warrants three '),
                    trailing: Icon(Icons.more_horiz),
                    isThreeLine: true,
                  ),
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
