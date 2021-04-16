import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/routing/departmentsBody.dart';
import 'package:hospitals/utils/routing/governmentsBody.dart';

class HomePage extends StatefulWidget {
  int currentIndex;

  HomePage({this.currentIndex = 0});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AxisesModel axisesModel;
  List<AxisesModel> axisesList = List();
  final items = [
    Container(),
    GovernmentsBody(),
    DepartementsBody(),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      gettingData();
    });

//    showHud();
  }


  gettingData() {
    setState(() {
      Api(context).GetAxesApi(_scaffoldKey).then((value) {
        axisesModel = value;
        axisesList.add(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("lengh: ${axisesList.length}");
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
                      items[widget.currentIndex],
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
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                // setState(() {
                                //   constructionsEnabled = true;
                                // });
                                navigateAndClearStack(
                                    context,
                                    HomePage(
                                      currentIndex: 1,
                                    ));
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(bottom: 50),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "محور الانشاءات",
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
