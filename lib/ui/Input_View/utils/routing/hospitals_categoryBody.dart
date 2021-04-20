import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/global.dart';
import 'package:hospitals/ui/Input_View/utils/routing/hospital_subcategory1Body.dart';

class HospitalsCategoryBody extends StatefulWidget {
  final int idGov;

  HospitalsCategoryBody({this.idGov});

  @override
  _HospitalsCategoryBodyState createState() => _HospitalsCategoryBodyState();
}

class _HospitalsCategoryBodyState extends State<HospitalsCategoryBody> {
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
      // Api(context).GetDepartementApi(_scaffoldKey);
      Api(context)
          .filterHospitalApi(_scaffoldKey, depIdGlobal, items)
          .then((value) {
        setState(() {
          items = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("items;;;;;;;${items.length}");
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    Logo,
                    width: 300,
                  )),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                    height: screenHeight/10,
                  ),
                  Text(
                    "المستشفيات" + " (${items.length})",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  SizedBox(
                    height: screenHeight > 800
                        ? screenHeight / 5
                        : screenHeight / 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(50),
                    // width: screenWidth / 1.7,
                    // height: screenHeight / 2,
                    child: GridView.builder(
                      itemCount: items.length,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: screenWidth > 1200 ? 3 : 1,
                        childAspectRatio: 4,
                        mainAxisSpacing: 60,
                        crossAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              headerGlobal = items[index].name;
                            });
                            navigateAndKeepStack(context, HospitalsSubcategory1Body()
                                // Constructions(
                                //   currentIndex: 4,
                                // ),
                                );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0XffE9A4A7),
                                      Color(0XffD2B0C3),
                                    ]),
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              "${items[index].name}",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
