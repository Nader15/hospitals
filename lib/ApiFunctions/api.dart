import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:xs_progress_hud/xs_progress_hud.dart';
import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'http://192.168.1.119:1337/';
  final String Axes = "Axes";

  BuildContext context;

  Api(@required this.context);

  Future userLogin(GlobalKey<ScaffoldState> _scaffoldKey, String email,
      String password) async {
    XsProgressHud.show(context);
    final String apiUrl = baseUrl + Axes;
    var data = {
      "email": email,
      "password": password,
    };
    var userToJson = json.encode(data);
    final response = await http.post(
      apiUrl,
      headers: {"Content-Type": "application/json"},
      body: userToJson,
    );
    Map<String, dynamic> dataContent = json.decode(response.body);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      // return UserModel.fromJson(dataContent);
    } else {
      // CustomSnackBar(_scaffoldKey,
      //     json.decode(response.body)['errors']['user'].toString());
      return false;
    }
  }

  Future GetAxesApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);

    final String completeUrl = baseUrl + Axes;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    List<dynamic> dataContent = json.decode(response.body);
    print("response::: ${response.body}");
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      // return AxisesModel.fromJson(dataContent);
    } else {
      print(dataContent);
      return false;
    }
  }
}
