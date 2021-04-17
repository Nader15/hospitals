import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospitals/utils/routing/departmentsBody.dart';
import 'package:hospitals/utils/routing/governmentsBody.dart';
import 'package:hospitals/utils/routing/hospital_subcategoryBody.dart';
import 'package:hospitals/utils/routing/hospitals_categoryBody.dart';
import 'package:hospitals/utils/routing/sectionBody.dart';

class Constructions extends StatefulWidget {
  int currentIndex;

  Constructions({this.currentIndex = 0});

  @override
  _ConstructionsState createState() => _ConstructionsState();
}

class _ConstructionsState extends State<Constructions> {
  final items = [
    GovernmentsBody(),
    DepartementsBody(),
    SectionBody(),
    HospitalsCategoryBody(),
    HospitalsSubcategoryBody()
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: screenWidth,
        // height: screenHeight,
        child: Container(
            // width: screenWidth/2,
            height: screenHeight,
            child: Container(
              width: screenWidth - (screenWidth / 6),
              // color: Colors.red,
              child: Stack(
                children: [
                  Center(
                    child: Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Image.asset(
                            "images/main_logo.png",
                            width: 300,
                          ),
                        )),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "محور الانشاءات",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
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
                          SizedBox(
                            height: 100,
                          ),
                          items[widget.currentIndex],
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // alignment: Alignment.center,
            )),
      ),
    );
  }
}
