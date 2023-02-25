import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.textButton,
    required this.press,
    required this.horizontalButtonSize,
  });
  final String textButton;
  final Function() press;
  final double horizontalButtonSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalButtonSize),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              spreadRadius: -1,
              blurRadius: 12,
              color: Color.fromRGBO(155, 155, 155, 0.73),
            )
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 62, 191, 155),
              Color.fromARGB(255, 37, 152, 108),
              Color.fromARGB(255, 8, 112, 79),
            ],
          ),
        ),
        child: TextButton(
          onPressed: press,
          child: Text(textButton),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(20.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
