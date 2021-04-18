import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';

class HospitalsSubcategory2Body extends StatefulWidget {
  @override
  _HospitalsSubcategory2BodyState createState() =>
      _HospitalsSubcategory2BodyState();
}

class _HospitalsSubcategory2BodyState extends State<HospitalsSubcategory2Body> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var percentageController = TextEditingController();
  var dateController = TextEditingController();
  var contractorController = TextEditingController();
  var waterController = TextEditingController();
  var exchangeController = TextEditingController();
  var civilProtectionController = TextEditingController();
  var supplyingController = TextEditingController();
  var installationController = TextEditingController();
  var electricController = TextEditingController();
  var notesController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        dateController.text = selectedDate.toIso8601String().split("T")[0];
        // trip_departmentTime = departmentDateController.text;
      });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
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
              Container(
                padding: EdgeInsets.all(8),
                width: screenWidth/6,
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
                  dropdownColor:  Color(0Xff4743a5),
                  style: TextStyle(color: Colors.white),
                  value: value_id,
                  onChanged: (newValue) {
                    setState(() {
                      value_id = newValue;
                    });
                  },
                  items: workTypesList.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem.id.toString(),
                      child: Text(valueItem.name.toString()),
                    );
                  }).toList(),
                ),
              ),
              InkWell(
                onTap: () {
                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                },
                child: Container(
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: dateController,
                    onTap: () => _selectDate(context),
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
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: percentageController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
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
          width: screenWidth / 1.7,
          // height: screenHeight / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                },
                child: Container(
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: civilProtectionController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "الحماية المدنية",
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
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: exchangeController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "الصرف",
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
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: waterController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "المياة",
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
          width: screenWidth / 1.7,
          // height: screenHeight / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                },
                child: Container(
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: electricController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "موقف التيار الكهربي",
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
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: installationController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "تركيب المحول",
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
                  width: screenWidth/6,
                  child: TextFormField(
                    controller: supplyingController,
                    onTap: () => _selectDate(context),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "توريد المحول",
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
        )
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
        ,
        SizedBox(
          height: 50,
        ),
        Container(
          width: screenWidth/2 ,
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
      ],
    );
  }
}
