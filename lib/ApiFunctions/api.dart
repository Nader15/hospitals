import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospitals/models/advisors_model.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:hospitals/models/civil_protection_model.dart';
import 'package:hospitals/models/constructor_model.dart';
import 'package:hospitals/models/creators_model.dart';
import 'package:hospitals/models/departement_model.dart';
import 'package:hospitals/models/don_or_not_model.dart';
import 'package:hospitals/models/exchange_model.dart';
import 'package:hospitals/models/filter_dep_model.dart';
import 'package:hospitals/models/governments_model.dart';
import 'package:hospitals/models/hospital_inputs_model.dart';
import 'package:hospitals/models/hospitals_model.dart';
import 'package:hospitals/models/sectionType_model.dart';
import 'package:hospitals/models/water_state_model.dart';
import 'package:hospitals/models/workTypes_model.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';
import 'package:xs_progress_hud/xs_progress_hud.dart';
import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'http://178.62.58.90/';
  final String AxesLink = "Axes";
  final String GovernoratesLink = "governorates";
  final String DepartmentsLink = "departments";
  final String HospitalsLink = "Hospitals";
  final String typeesLink = "sectiontypes";
  final String worktypesLink = "worktypes";
  final String advisorsLink = "advisors";
  // final String HospitalInputsLink = "Hospital-Inputs";
  final String contractorsLink = "contractors";
  final String CivilProtectionLink = "civil-protectionsses";
  final String WaterStateLink = "waterstatesses";
  final String ExchangeLink = "Exchanges";
  final String donornotsLink = "donornots";
  final String CreatorsLink = "centers";

  BuildContext context;

  Api(@required this.context);

  Future filterDepartmenApi(
      GlobalKey<ScaffoldState> _scaffoldKey, int id, List items) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + "departments?[governorate]=$id";
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<FilterDepModel> filterDepList2 = <FilterDepModel>[];
    for (var value in dataContent) {
      filterDepList2.add(FilterDepModel.fromJson(value));
    }
    items.addAll(filterDepList2);
    filterDepartmentList.addAll(filterDepList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("FilterDepList content : ${filterDepartmentList.length}");
      return items;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future filterHospitalApi(
      GlobalKey<ScaffoldState> _scaffoldKey, int id, List items) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + "Hospitals?[department]=$id";
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<FilterDepModel> filterDepList2 = <FilterDepModel>[];
    for (var value in dataContent) {
      filterDepList2.add(FilterDepModel.fromJson(value));
    }
    items.addAll(filterDepList2);
    filterDepartmentList.addAll(filterDepList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("FilterDepList content : ${filterDepartmentList.length}");
      return items;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future filterUnitsApi(
      GlobalKey<ScaffoldState> _scaffoldKey, int id, List items) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + "Units?[department]=$id";
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<FilterDepModel> filterDepList2 = <FilterDepModel>[];
    for (var value in dataContent) {
      filterDepList2.add(FilterDepModel.fromJson(value));
    }
    items.addAll(filterDepList2);
    // filterDepartmentList.addAll(filterDepList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("FilterDepList content : ${filterDepartmentList.length}");
      return items;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future filterCentersApi(
      GlobalKey<ScaffoldState> _scaffoldKey, int id, List items) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + "centersses?[department]=$id";
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<FilterDepModel> filterDepList2 = <FilterDepModel>[];
    for (var value in dataContent) {
      filterDepList2.add(FilterDepModel.fromJson(value));
    }
    items.addAll(filterDepList2);
    // filterDepartmentList.addAll(filterDepList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("FilterDepList content : ${filterDepartmentList.length}");
      return items;
    } else {
      print(dataContent);
      return false;
    }
  }

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

  // Future HospitalInputsApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
  //   XsProgressHud.show(context);
  //   final String completeUrl = baseUrl + HospitalInputsLink;
  //   final response = await http.get(
  //     completeUrl,
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Accept': 'application/json',
  //       // HttpHeaders.authorizationHeader: UserTocken
  //     },
  //   );
  //   var dataContent = json.decode(response.body);
  //   List<HospitalInputsModel> sectionTypeList2 = <HospitalInputsModel>[];
  //   for (var value in dataContent) {
  //     sectionTypeList2.add(HospitalInputsModel.fromJson(value));
  //   }
  //   hospitalInputsList.addAll(sectionTypeList2);
  //   XsProgressHud.hide();
  //   if (response.statusCode == 200) {
  //     print("HospitalInputsList content : $dataContent");
  //     return true;
  //   } else {
  //     print(dataContent);
  //     return false;
  //   }
  // }

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
    List<ConstructorsModel> contractorsList2 = <ConstructorsModel>[];
    for (var value in dataContent) {
      contractorsList2.add(ConstructorsModel.fromJson(value));
    }
    contractorsList.addAll(contractorsList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future civilProtectionApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + CivilProtectionLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<CivilProtectionModel> CivilProtectionList2 = <CivilProtectionModel>[];
    for (var value in dataContent) {
      CivilProtectionList2.add(CivilProtectionModel.fromJson(value));
    }
    CivilProtectionList.addAll(CivilProtectionList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future donornotsApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + donornotsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<DonOrNotModel> donornotsList2 = <DonOrNotModel>[];
    for (var value in dataContent) {
      donornotsList2.add(DonOrNotModel.fromJson(value));
    }
    DonOrNotModelList.addAll(donornotsList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future ExchangeApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + ExchangeLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<ExchangeModel> ExchangeModelList2 = <ExchangeModel>[];
    for (var value in dataContent) {
      ExchangeModelList2.add(ExchangeModel.fromJson(value));
    }
    ExchangeModelList.addAll(ExchangeModelList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future WaterStateApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + WaterStateLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<WaterStateModel> WaterStateList2 = <WaterStateModel>[];
    for (var value in dataContent) {
      WaterStateList2.add(WaterStateModel.fromJson(value));
    }
    WaterStateModelList.addAll(WaterStateList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future AdvisorsApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + advisorsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<AdvisorsModel> AdvisorsList2 = <AdvisorsModel>[];
    for (var value in dataContent) {
      AdvisorsList2.add(AdvisorsModel.fromJson(value));
    }
    AdvisorsList.addAll(AdvisorsList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("contractorsList content : $dataContent");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }

  Future GetCreateApi(GlobalKey<ScaffoldState> _scaffoldKey) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + CreatorsLink;
    final response = await http.get(
      completeUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // HttpHeaders.authorizationHeader: UserTocken
      },
    );
    var dataContent = json.decode(response.body);
    List<CreatorsModel> CreatorsList2 = <CreatorsModel>[];
    for (var value in dataContent) {
      CreatorsList2.add(CreatorsModel.fromJson(value));
    }
    CreatorsList.addAll(CreatorsList2);
    XsProgressHud.hide();
    if (response.statusCode == 200) {
      print("Creators List content : ${CreatorsList.length}");
      return true;
    } else {
      print(dataContent);
      return false;
    }
  }


  Future PostCreateApi(
      GlobalKey<ScaffoldState> _scaffoldKey,
      String Name,
      String Excutionpercentage,
      String Datedelivery,
      String contractor,
      String Water,
      String Exchange,
      String Transformersupply,
      String CivilProtection,
      String Adapterinstallation,
      String Thepositionoftheelectriccurrent,
      String Notes,
      String type,
      String governorate,
      String departments,
      String unittype,
      String databasic,
      String Advisor) async {
    XsProgressHud.show(context);
    final String completeUrl = baseUrl + CreatorsLink;
    Map data = {
      "Name": Name,
      "Excutionpercentage": Excutionpercentage,
      "Datedelivery": Datedelivery,
      "contractor": contractor,
      "Water": Water,
      "worknature": "worknature",
      "Exchange": Exchange,
      "Transformersupply": Transformersupply,
      "CivilProtection": CivilProtection,
      "Adapterinstallation": Adapterinstallation,
      "Thepositionoftheelectriccurrent": Thepositionoftheelectriccurrent,
      "Notes": Notes,
      "type": type,
      "governorate": governorate,
      "departments": departments,
      "unittype": unittype,
      "databasic": databasic,
      "Advisor": Advisor,
      "StateNow": 'StateNow'
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
