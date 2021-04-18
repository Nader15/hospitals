import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:hospitals/models/departement_model.dart';
import 'package:hospitals/models/governments_model.dart';
import 'package:hospitals/models/hospital_inputs_model.dart';
import 'package:hospitals/models/hospitals_model.dart';
import 'package:hospitals/models/sectionType_model.dart';
import 'package:hospitals/models/workTypes_model.dart';
import 'package:hospitals/utils/global.dart';
import 'package:xs_progress_hud/xs_progress_hud.dart';
import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'http://138.68.147.144/';
  final String AxesLink = "Axes";
  final String GovernoratesLink = "governorates";
  final String DepartmentsLink = "departments";
  final String HospitalsLink = "Hospitals";
  final String typeesLink = "sectiontypes";
  final String worktypesLink = "worktypes";
  final String advisorsLink = "advisors";
  final String HospitalInputsLink = "Hospital-Inputs";
  final String contractorsLink = "contractors";

  BuildContext context;

  Api(@required this.context);

  Future GetAxesApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + AxesLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<AxisesModel> axisesList2 = <AxisesModel>[];
    for (var value in dataContent) {
      axisesList2.add(AxisesModel.fromJson(value));
    }
    axisesList.addAll(axisesList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("axisesList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future GetGovernmentApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + GovernoratesLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<GovernmentsModel> governmentList2 = <GovernmentsModel>[];
    for (var value in dataContent) {
      governmentList2.add(GovernmentsModel.fromJson(value));
    }
    governmentsList.addAll(governmentList2);

    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("governmentsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future GetDepartementApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + DepartmentsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<DeprtementModel> departementList2 = <DeprtementModel>[];
    for (var value in dataContent) {
      departementList2.add(DeprtementModel.fromJson(value));
    }
    departmentList.addAll(departementList2);
    print("departmentList content : ${departmentList[2].name}");
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("governmentsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future GetHospitalsApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + HospitalsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<HospitalsModel> hospitalsList2 = <HospitalsModel>[];
    for (var value in dataContent) {
      hospitalsList2.add(HospitalsModel.fromJson(value));
    }
    hospitalsList.addAll(hospitalsList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("axisesList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future GetSectionsApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + typeesLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<sectiontypeModel> sectionTypeList2 = <sectiontypeModel>[];
    for (var value in dataContent) {
      sectionTypeList2.add(sectiontypeModel.fromJson(value));
    }
    sectionTypeList.addAll(sectionTypeList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("axisesList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future WorkTypesApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + worktypesLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<WorkTypesModel> sectionTypeList2 = <WorkTypesModel>[];
    for (var value in dataContent) {
      sectionTypeList2.add(WorkTypesModel.fromJson(value));
    }
    workTypesList.addAll(sectionTypeList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("axisesList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future HospitalInputsApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + HospitalInputsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<HospitalInputsModel> sectionTypeList2 = <HospitalInputsModel>[];
    for (var value in dataContent) {
      sectionTypeList2.add(HospitalInputsModel.fromJson(value));
    }
    hospitalInputsList.addAll(sectionTypeList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("HospitalInputsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future contractorApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + contractorsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<HospitalInputsModel> sectionTypeList2 = <HospitalInputsModel>[];
    for (var value in dataContent) {
      sectionTypeList2.add(HospitalInputsModel.fromJson(value));
    }
    contractorsList.addAll(sectionTypeList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future PostWorkApi(GlobalKey<ScaffoldState> _scaffoldKey,String workType) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + advisorsLink;
    Map data = {
      "Name": workType,
    };
    final response = await http.post(completeUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // HttpHeaders.authorizationHeader: UserTocken
        },
        body: jsonEncode(data));
    Map<String, dynamic> dataContent = json.decode(response.body);

    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("dataContent:: ${dataContent}");
      return true;
    } else
      print("dataContent:: ${dataContent}");
    return false;
  }

}
