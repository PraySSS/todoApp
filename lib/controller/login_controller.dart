import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_learning/model/creatuser_model.dart';
import 'package:http/http.dart ' as http;

import '../Backup/backup_listview.dart';

class loginController {
  Future<void> login(
      String user_email, String user_password, BuildContext context) async {
    final header = {
      'Authorization': 'Bearer 950b88051dc87fe3fcb0b4df25eee676',
      'Content-Type': 'application/json'
    };

    final json = {"user_email": user_email, "user_password": user_password};
//send path
    try {
      final response = await http.post(
          Uri.parse('http://bms.dyndns.tv:6004/api/login'),
          body: jsonEncode(json),
          headers: header);
      //Change body data to object
      final data = jsonDecode(response.body);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        CreateUser user = CreateUser.fromJson(data);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ListViewScreen(user: user)));
      } else if (response.statusCode == 400) {
        log('Error');
      }
    } catch (e) {}
  }
}
