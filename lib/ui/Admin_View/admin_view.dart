import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';
import 'package:hospitals/ui/dashboard/dashboard.dart';

import 'hospitals_view.dart';

class AdminView extends StatefulWidget {
  @override
  _AdminViewState createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      gettingData();
    });
  }

  List items = [];

  gettingData() {
    setState(() {
      Api(context).GetAxesApi(_scaffoldKey);
      Api(context).GetCreateApi(_scaffoldKey);
    });
  }

  @override
  void dispose() {
    gettingData();
    super.dispose();
  }
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
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                            onTap: () {
                              navigateAndClearStack(context, DashBoard());
                            },
                            child: Icon(
                              Icons.logout,
                              color: Colors.red,
                              size: 40,
                            )),
                      )
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
                                navigateAndKeepStack(context, HospitalsView()
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
