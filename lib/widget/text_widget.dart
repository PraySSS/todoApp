import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class W500Text extends StatelessWidget {
  const W500Text({
    super.key,
    required this.textSize,
    required this.hexTextColor,
    required this.text,
  });
  final double textSize;
  final String hexTextColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.w500,
          color: HexColor(hexTextColor)),
    );
  }
}
