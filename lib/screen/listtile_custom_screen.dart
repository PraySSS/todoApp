import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/screen/add_todo_screen.dart';
import 'package:flutter_learning/screen/signin_screen.dart';
import 'package:flutter_learning/screen/signup_screen.dart';
import 'package:flutter_learning/widget/row_bottomsheet_widget.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widget/appbar_widget.dart';
import '../widget/searchbar_widget.dart';

class ListViewCustomScreen extends StatefulWidget {
  const ListViewCustomScreen({super.key});

  @override
  State<ListViewCustomScreen> createState() => _ListViewCustomScreenState();
}

// Check Box value
bool isChecked = false;

class _ListViewCustomScreenState extends State<ListViewCustomScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: appBarCustom(),
            title: Text('Listview'),
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
          ),

          //End AppBar
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    WidgetSearchBar(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: HexColor('#1DC9A0'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTodoScreen(),
                ),
              );
            },
            child: ImageIcon(
              Svg('assets/icons/add.svg'),
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}

//AppBar
class appBarCustom extends StatelessWidget {
  const appBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: IconButton(
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
                    Text(
                      'SIGN OUT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        'Do you want to sign out?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),

                    //Sign out
                    WidgetRowBottomSheet(
                      uriSvg: 'assets/icons/signout.svg',
                      text: 'Sign Out',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninScreen(),
                          ),
                        );
                      },
                    ),
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
        ),
      ),
    );
  }
}
