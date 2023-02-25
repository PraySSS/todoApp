import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/model/creatuser_model.dart';
import 'package:flutter_learning/screen/add_todo_screen.dart';
import 'package:flutter_learning/screen/signin_screen.dart';
import 'package:flutter_learning/screen/signup_screen.dart';
import 'package:flutter_learning/widget/row_bottomsheet_widget.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widget/appbar_widget.dart';
import '../widget/searchbar_widget.dart';
import '../widget/text_widget.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key, required this.user});

  final CreateUser user;

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

// Check Box value
bool isChecked = false;

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Container(
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
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 25),
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
            ),
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
                    Column(
                      children: [
                        //Start Listtile
                        Container(
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
                              offset: Offset(-10, -15),
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
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: W500Text(
                                        textSize: 20,
                                        hexTextColor: '#0D7A5C',
                                        text: 'Title',
                                      ),
                                    ),
                                    threeDotHorizon()
                                  ],
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    W500Text(
                                      textSize: 12,
                                      hexTextColor: '#D9D9D9',
                                      text: '12/02/2000',
                                    ),
                                    W500Text(
                                      textSize: 12,
                                      hexTextColor: '#666161AD',
                                      text:
                                          'A sufficiently long subtirants thre sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.',
                                    ),
                                  ],
                                ),
                                //Give the subtitle more space to have text which is more than one line
                                isThreeLine: true,
                              ),
                            ),
                          ),
                        ),
                      ],
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

class threeDotHorizon extends StatelessWidget {
  const threeDotHorizon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: const Icon(Icons.more_horiz),
      onPressed: () {
        showModalBottomSheet<void>(
          //Radius custom
          shape: const RoundedRectangleBorder(
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
                SizedBox(
                  height: 30,
                ),
                //Sign out
                WidgetRowBottomSheet(
                  uriSvg: 'assets/icons/edit.svg',
                  text: 'Edit',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                WidgetRowBottomSheet(
                  uriSvg: 'assets/icons/delete.svg',
                  text: 'Delete',
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
                  height: 50,
                )
              ],
            );
          },
        );
      },
    );
  }
}
