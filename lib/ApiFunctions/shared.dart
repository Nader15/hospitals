// import 'package:flutter/material.dart';
// import 'package:hospitals/models/creators_model.dart';
// import 'package:hospitals/ui/Input_View/utils/global.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// String UserAuth;
// String TalaentId = "TalaentId";
// List<CreatorsModel> TalaentName = <CreatorsModel>[];
// String TalaentEmail = "TalaentEmail";
// CreatorsModel creatorsModel;
//
// Future<CreatorsModel> getUserTocken(
//   BuildContext context,
// ) async {
//   var prefs = await SharedPreferences.getInstance();
//   CreatorsList = prefs.get(TalaentName);
//   return prefs.getStringList(TalaentName);
// }
//
// Future setUserTocken({List talentName}) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setStringList(TalaentName, talentName);
// }
//
// Future clearAllData({String auth_token}) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.clear();
// }
