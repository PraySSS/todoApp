/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hexcolor/hexcolor.dart';

import '../screen/signin_screen.dart';

class WidgetBottomSheet extends StatelessWidget {
  const WidgetBottomSheet({
    super.key,
    this.titleText,
    this.subTitleText,
  });
  final String? titleText;
  final String? subTitleText;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 35,
      icon: ImageIcon(Svg('assets/icons/signout.svg')),
      onPressed: () {
        showModalBottomSheet<void>(
          shape: const RoundedRectangleBorder(
            // <-- SEE HERE
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            ),
          ),
          context: context,
          //constraints: BoxConstraints(maxHeight: 200),
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 25),
                  child: Divider(
                    height: 5,
                    thickness: 2,
                    indent: 180,
                    endIndent: 180,
                    color: Colors.grey,
                  ),
                ),
                Text(''),
                /* SizedBox(
                  height: 25,
                ), */
                Text(''),
                /* SizedBox(
                  height: 60,
                ), */

                //Sign out
                WidgetRowBottomSheet(),
                //End Signout
                SizedBox(
                  height: 25,
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 40,
                )
              ],
            );
          },
        );
      },
    );
  }
}

 */