import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/Input_View/input_view.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/global.dart';
import 'package:hospitals/ui/custom_snackBar.dart';

class HospitalsSubcategory2Body extends StatefulWidget {
  final String header;

  HospitalsSubcategory2Body({this.header});

  @override
  _HospitalsSubcategory2BodyState createState() =>
      _HospitalsSubcategory2BodyState();
}

class _HospitalsSubcategory2BodyState extends State<HospitalsSubcategory2Body> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      gettingData();
      contractorsList.clear();
      CivilProtectionList.clear();
      DonOrNotModelList.clear();
      WaterStateModelList.clear();
      ExchangeModelList.clear();
      CreatorsList.clear();
      AdvisorsList.clear();
    });
    // Future.delayed(Duration(milliseconds: 381), () {
    //   gettingData();
    // });
  }

  gettingData() {
    setState(() {
      Api(context).contractorApi(_scaffoldKey);
      Api(context).civilProtectionApi(_scaffoldKey);
      Api(context).WaterStateApi(_scaffoldKey);
      Api(context).ExchangeApi(_scaffoldKey);
      Api(context).donornotsApi(_scaffoldKey);
      Api(context).AdvisorsApi(_scaffoldKey);
    });
  }

  var percentageController = TextEditingController();
  var dateController1 = TextEditingController();
  var dateController2 = TextEditingController();
  var contractorController = TextEditingController();
  var advisorController = TextEditingController();
  var waterController = TextEditingController();
  var exchangeController = TextEditingController();
  var civilProtectionController = TextEditingController();
  var supplyingController = TextEditingController();
  var installationController = TextEditingController();
  var electricController = TextEditingController();
  var notesController = TextEditingController();

  DateTime selectedDatePredict = DateTime.now();
  DateTime selectedDateExist = DateTime.now();

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDatePredict,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDatePredict = picked;
        dateController1.text =
            selectedDatePredict.toIso8601String().split("T")[0];
        // trip_departmentTime = departmentDateController.text;
      });
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDateExist,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDateExist = picked;
        dateController2.text =
            selectedDateExist.toIso8601String().split("T")[0];
        // trip_departmentTime = departmentDateController.text;
      });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    "images/main_logo.png",
                    width: 300,
                  )),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                            onTap: () {
                              navigateAndClearStack(context, InputView());
                            },
                            child: Icon(
                              Icons.logout,
                              color: Colors.red,
                              size: 40,
                            )),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: Text(
                            "محور الانشاءات",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          width: screenWidth / 2,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0Xff4743a5),
                                    Color(0Xff2b52c9),
                                  ]),
                              borderRadius: BorderRadius.circular(25)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              size: 40,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 10,
                  ),
                  Text(
                    "${headerGlobal}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  SizedBox(
                    height: screenHeight / 10,
                  ),
                  Container(
                    width: screenWidth / 1.7,
                    // height: screenHeight / 2,
                    child: screenWidth > 1200
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // InkWell(
                              //   onTap: () {
                              //     // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                              //   },
                              //   child: Container(
                              //     width: screenWidth/6,
                              //     child: TextFormField(
                              //       controller: contractorController,
                              //       onTap: () => _selectDate(context),
                              //       style: TextStyle(color: Colors.white),
                              //       textAlign: TextAlign.right,
                              //       cursorColor: Colors.blue,
                              //       decoration: InputDecoration(
                              //         hintText: "مقاول التنفيذ",
                              //         hintStyle: TextStyle(fontSize: 25),
                              //         filled: true,
                              //         fillColor: Color(0XffE9A4A7),
                              //         border: OutlineInputBorder(
                              //             borderSide: BorderSide.none,
                              //             borderRadius: BorderRadius.circular(25)),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              InkWell(
                                onTap: () {
                                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: screenWidth / 6,
                                  child: TextFormField(
                                    controller: dateController2,
                                    onTap: () => _selectDate2(context),
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      hintText: "تاريخ الاستلام المتوقع",
                                      hintStyle: TextStyle(fontSize: 25),
                                      filled: true,
                                      fillColor: Color(0XffE9A4A7),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                                },
                                child: Container(
                                  width: screenWidth / 6,
                                  child: TextFormField(
                                    controller: dateController1,
                                    onTap: () => _selectDate1(context),
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      hintText: "ميعاد متوقع للتسليم",
                                      hintStyle: TextStyle(fontSize: 25),
                                      filled: true,
                                      fillColor: Color(0XffE9A4A7),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                                },
                                child: Container(
                                  width: screenWidth / 6,
                                  child: TextFormField(
                                    controller: percentageController,
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "%",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      hintText: "نسبة التنفيذ",
                                      hintStyle: TextStyle(fontSize: 25),
                                      filled: true,
                                      fillColor: Color(0XffE9A4A7),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // InkWell(
                              //   onTap: () {
                              //     // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                              //   },
                              //   child: Container(
                              //     width: screenWidth/6,
                              //     child: TextFormField(
                              //       controller: contractorController,
                              //       onTap: () => _selectDate(context),
                              //       style: TextStyle(color: Colors.white),
                              //       textAlign: TextAlign.right,
                              //       cursorColor: Colors.blue,
                              //       decoration: InputDecoration(
                              //         hintText: "مقاول التنفيذ",
                              //         hintStyle: TextStyle(fontSize: 25),
                              //         filled: true,
                              //         fillColor: Color(0XffE9A4A7),
                              //         border: OutlineInputBorder(
                              //             borderSide: BorderSide.none,
                              //             borderRadius: BorderRadius.circular(25)),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              InkWell(
                                onTap: () {
                                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  alignment: Alignment.center,
                                  width: screenWidth / 2,
                                  child: TextFormField(
                                    controller: dateController2,
                                    onTap: () => _selectDate2(context),
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      hintText: "تاريخ الاستلام المتوقع",
                                      hintStyle: TextStyle(fontSize: 25),
                                      filled: true,
                                      fillColor: Color(0XffE9A4A7),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  width: screenWidth / 2,
                                  child: TextFormField(
                                    controller: dateController1,
                                    onTap: () => _selectDate1(context),
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      hintText: "ميعاد متوقع للتسليم",
                                      hintStyle: TextStyle(fontSize: 25),
                                      filled: true,
                                      fillColor: Color(0XffE9A4A7),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  width: screenWidth / 2,
                                  child: TextFormField(
                                    controller: percentageController,
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.right,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "%",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      hintText: "نسبة التنفيذ",
                                      hintStyle: TextStyle(fontSize: 25),
                                      filled: true,
                                      fillColor: Color(0XffE9A4A7),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                    // color: Colors.red,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: screenWidth / 2.5,
                    // height: screenHeight / 2,
                    child: screenWidth > 1200
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "الاستشاري",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: Advisors_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      Advisors_id = newValue;
                                    });
                                  },
                                  items: AdvisorsList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "المقاول",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: contractors_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      contractors_id = newValue;
                                    });
                                  },
                                  items: contractorsList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "الاستشاري",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: Advisors_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      Advisors_id = newValue;
                                    });
                                  },
                                  items: AdvisorsList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.only(bottom: 10),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "المقاول",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: contractors_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      contractors_id = newValue;
                                    });
                                  },
                                  items: contractorsList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                    // color: Colors.red,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: screenWidth / 1.7,
                    // height: screenHeight / 2,
                    child: screenWidth > 1200
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "الحماية المدنية",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: CivilProtection_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      CivilProtection_id = newValue;
                                    });
                                  },
                                  items: CivilProtectionList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "الصرف",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: Exchange_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      Exchange_id = newValue;
                                    });
                                  },
                                  items: ExchangeModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "المياة",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: WaterState_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      WaterState_id = newValue;
                                    });
                                  },
                                  items: WaterStateModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "الحماية المدنية",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: CivilProtection_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      CivilProtection_id = newValue;
                                    });
                                  },
                                  items: CivilProtectionList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "الصرف",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: Exchange_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      Exchange_id = newValue;
                                    });
                                  },
                                  items: ExchangeModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "المياة",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: WaterState_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      WaterState_id = newValue;
                                    });
                                  },
                                  items: WaterStateModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                    // color: Colors.red,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: screenWidth / 1.7,
                    // height: screenHeight / 2,
                    child: screenWidth > 1200
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "موقف التيار الكهربي",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: DonOrNotElectric_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      DonOrNotElectric_id = newValue;
                                    });
                                  },
                                  items: DonOrNotModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "تركيب المحول",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: DonOrNotInstallation_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      DonOrNotInstallation_id = newValue;
                                    });
                                  },
                                  items: DonOrNotModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 6,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "توريد المحول",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: DonOrNotSupply_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      DonOrNotSupply_id = newValue;
                                    });
                                  },
                                  items: DonOrNotModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "موقف التيار الكهربي",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: DonOrNotElectric_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      DonOrNotElectric_id = newValue;
                                    });
                                  },
                                  items: DonOrNotModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "تركيب المحول",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: DonOrNotInstallation_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      DonOrNotInstallation_id = newValue;
                                    });
                                  },
                                  items: DonOrNotModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                width: screenWidth / 2,
                                decoration: BoxDecoration(
                                    color: Color(0XffE9A4A7),
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton(
                                  hint: Text(
                                    "توريد المحول",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.blue),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Color(0Xff4743a5),
                                  style: TextStyle(color: Colors.white),
                                  value: DonOrNotSupply_id,
                                  onChanged: (newValue) {
                                    setState(() {
                                      DonOrNotSupply_id = newValue;
                                    });
                                  },
                                  items: DonOrNotModelList.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem.name.toString(),
                                      child: Text(valueItem.name.toString()),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                    // color: Colors.red,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: screenWidth / 2,
                    child: TextFormField(
                      controller: notesController,
                      maxLines: 5,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        hintText: "ملاحظات",
                        hintStyle: TextStyle(fontSize: 25),
                        filled: true,
                        fillColor: Color(0XffE9A4A7),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                      color: Color(0Xff4743a5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: () {
                        if (percentageController.text.isEmpty ||
                            dateController1.text.isEmpty ||
                            notesController.text.isEmpty ||
                            dateController2.text.isEmpty) {
                          CustomSnackBar(
                              _scaffoldKey, " من فضلك ادخل الحقول الفارغة");
                        } else {
                          Api(context).PostCreateApi(
                              _scaffoldKey,
                              headerGlobal,
                              percentageController.text,
                              dateController1.text,
                              contractors_id,
                              WaterState_id,
                              Exchange_id,
                              DonOrNotSupply_id,
                              CivilProtection_id,
                              DonOrNotInstallation_id,
                              DonOrNotElectric_id,
                              notesController.text,
                              WorkTypeGlobal,
                              govGlobal,
                              depNameGlobal,
                              sectionNameGlobal,
                              dateController2.text,
                              Advisors_id);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: screenWidth / 2,
                        child: Text(
                          "أرسال",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        padding: EdgeInsets.all(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
