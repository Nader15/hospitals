import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/departmentsBody.dart';
import 'package:hospitals/utils/routing/governmentsBody.dart';

class HomePage extends StatefulWidget {
  int currentIndex;

  HomePage({this.currentIndex = 0});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final items = [
  //   Container(),
  //   // GovernmentsBody(),
  //   // DepartementsBody(),
  // ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      gettingData();
    });
  }

  gettingData() {
    Api(context).GetAxesApi(_scaffoldKey);
    Api(context).GetGovernmentApi(_scaffoldKey);
    Api(context).GetDepartementApi(_scaffoldKey);
    Api(context).GetHospitalsApi(_scaffoldKey);
    Api(context).GetSectionsApi(_scaffoldKey);
    Api(context).WorkTypesApi(_scaffoldKey);
    // Api(context).HospitalInputsApi(_scaffoldKey);
    Api(context).contractorApi(_scaffoldKey);
    Api(context).civilProtectionApi(_scaffoldKey);
    Api(context).WaterStateApi(_scaffoldKey);
    Api(context).ExchangeApi(_scaffoldKey);
    Api(context).donornotsApi(_scaffoldKey);
  }

  // @override
  // void dispose() {
  //   Api(context).GetAxesApi(_scaffoldKey);
  //   Api(context).GetGovernmentApi(_scaffoldKey);
  //   Api(context).GetDepartementApi(_scaffoldKey);
  //   Api(context).GetHospitalsApi(_scaffoldKey);
  //   Api(context).GetSectionsApi(_scaffoldKey);
  //   Api(context).WorkTypesApi(_scaffoldKey);
  //   Api(context).HospitalInputsApi(_scaffoldKey);
  //   Api(context).contractorApi(_scaffoldKey);
  //   Api(context).civilProtectionApi(_scaffoldKey);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: screenWidth,
        // height: screenHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
                            child: Image.asset(
                              "images/main_logo.png",
                              width: 300,
                            )),
                      ),
                      // items[widget.currentIndex],
                    ],
                  ),
                  // alignment: Alignment.center,
                )),
            Align(
              // alignment: Alignment.centerLeft,
              child: Container(
                width: screenWidth / 6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0Xff182c6b),
                        Color(0Xff3e183b),
                      ]),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        "images/main_logo.png",
                        width: 150,
                      ),
                      Container(
                        padding: EdgeInsets.all(30),
                        height: screenHeight,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: axisesList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap:
                                  // axisesList[index].id == 1
                                  //     ?
                                  () {
                                navigateAndClearStack(context, GovernmentsBody()
                                    // HomePage(
                                    //   currentIndex: 1,
                                    // ),
                                    );
                              }
                              // : null
                              ,
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(bottom: 50),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: axisesList[index].id == 1
                                        ? Colors.white
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "${axisesList[index].name}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
