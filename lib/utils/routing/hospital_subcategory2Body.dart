import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/hospital_subcategory1Body.dart';

class HospitalsSubcategory2Body extends StatefulWidget {
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "مستشفي أكتوبر",
                style: TextStyle(color: Colors.black, fontSize: 50),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: screenWidth / 1.7,
                // height: screenHeight / 2,
                child: Row(
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
                                borderRadius: BorderRadius.circular(25)),
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
                                borderRadius: BorderRadius.circular(25)),
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
                                borderRadius: BorderRadius.circular(25)),
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
                child: Row(
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                child: Row(
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                child: Row(
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
                        icon:
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
              // Container(
              //   width: screenWidth / 1.7,
              //   height: screenHeight / 2,
              //   child: GridView.builder(
              //     itemCount: hospitalInputsList.length,
              //     physics: ScrollPhysics(),
              //     shrinkWrap: true,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //       childAspectRatio: 4,
              //       mainAxisSpacing: 60,
              //       crossAxisSpacing: 100,
              //     ),
              //     itemBuilder: (context, index) {
              //       return hospitalInputsList[index].name!="ملاحظات"?InkWell(
              //         onTap: () {
              //           // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
              //         },
              //         child: TextFormField(
              //           controller: dateController,
              //           onTap: ()=>_selectDate(context),
              //           style: TextStyle(color: Colors.white),
              //           textAlign: TextAlign.right,
              //           cursorColor: Colors.blue,
              //           decoration: InputDecoration(
              //             hintText: "${hospitalInputsList[index].name}",
              //             hintStyle: TextStyle(fontSize: 25),
              //             filled: true,
              //             fillColor: Color(0XffE9A4A7),
              //             border: OutlineInputBorder(
              //                 borderSide: BorderSide.none,
              //                 borderRadius: BorderRadius.circular(25)),
              //           ),
              //         ),
              //       )
              //           :Container();
              //     },
              //   ),
              // ),

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
              RaisedButton(
                color: Color(0XffE9A4A7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: () {
                  Api(context).PostCreateApi(
                      _scaffoldKey,
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
                      dateController2.text,
                      Advisors_id);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: screenWidth / 10,
                  child: Text(
                    "أرسال",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  padding: EdgeInsets.all(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
