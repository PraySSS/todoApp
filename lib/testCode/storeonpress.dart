/* onPressed: () {
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
                  }, */