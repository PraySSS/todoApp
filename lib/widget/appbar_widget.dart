import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class WidgetAppbar extends StatelessWidget implements PreferredSize {
  const WidgetAppbar({
    super.key,
    required this.hexColor,
    required this.svgUri,
    required this.appbarTitle,
  });
  final String hexColor;
  final String svgUri;
  final String appbarTitle;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        child: SizedBox(
          child: IconButton(
            iconSize: 35,
            color: HexColor(hexColor),
            icon: ImageIcon(Svg(svgUri)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      title: Text(appbarTitle),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              HexColor('#4CC599'),
              HexColor('#0D7A5C'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
