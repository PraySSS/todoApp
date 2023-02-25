import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Center(
          child: new Icon(
            Icons.refresh,
            size: 150.0,
          ),
        ),
      ),
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 20.0,
          ),
        ],
      ),
    );
  }
}
