import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetSearchBar extends StatelessWidget {
  const WidgetSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      padding: EdgeInsets.all(15),
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
    );
  }
}
