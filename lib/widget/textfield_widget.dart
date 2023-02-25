import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class WidgetTextField extends StatelessWidget {
  const WidgetTextField({
    super.key,
    required this.text,
    this.controller,
    required this.obscureText,
    required this.maxLineTextField,
    required this.textFieldHeight,
    required this.horizontalSize,
  });

  final String text;
  final TextEditingController? controller;
  final bool obscureText;
  final int maxLineTextField;
  final double horizontalSize;
  final double textFieldHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalSize),
      child: Container(
        height: textFieldHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              spreadRadius: -1,
              blurRadius: 12,
              color: Color.fromRGBO(155, 155, 155, 0.73),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            // To hide password in with circle
            /*     validator:
                RequiredValidator(errorText: 'enter a valid email address'), */
            style: TextStyle(color: HexColor('#666161AD')),
            obscureText: obscureText,
            controller: controller, minLines: 1, maxLines: maxLineTextField,
            decoration: InputDecoration(
              labelText: text,
              hintText: 'Enter $text',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
