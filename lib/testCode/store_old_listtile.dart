/* Container(
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
                              offset: Offset(-15, -15),
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
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Text(
                                    'ListTile',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                subtitle: Text(
                                    'A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.A sufficiently long subtitle warrants three lines.'),
                                trailing: Icon(
                                  Icons.more_horiz,
                                  size: 20,
                                ),
                                isThreeLine: true,
                              ),
                            ),
                          ),
                        ), */