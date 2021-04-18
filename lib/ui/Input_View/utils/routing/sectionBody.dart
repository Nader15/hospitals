import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';
import 'package:hospitals/ui/Input_View/utils/routing/centers_page.dart';
import 'package:hospitals/ui/Input_View/utils/routing/hospitals_categoryBody.dart';
import 'package:hospitals/ui/Input_View/utils/routing/units_page.dart';

class SectionBody extends StatefulWidget {
  final int idGov;

  SectionBody({this.idGov});

  @override
  _SectionBodyState createState() => _SectionBodyState();
}

class _SectionBodyState extends State<SectionBody> {
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
    setState(() {
      Api(context).GetSectionsApi(_scaffoldKey);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    height: 200,
                  ),
                  Text(
                    "نوع الوحدة",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    width: screenWidth / 1.7,
                    height: screenHeight / 3,
                    child: GridView.builder(
                      itemCount: 3,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 4,
                        mainAxisSpacing: 60,
                        crossAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              sectionNameGlobal = sectionTypeList[index].name;
                              navigateAndKeepStack(
                                  context,
                                  sectionTypeList[index].id == 1
                                      ? HospitalsCategoryBody(
                                    idGov: widget.idGov,
                                  )
                                      : sectionTypeList[index].id == 2
                                      ? unitsCategoryBody()
                                      : CentersCategoryBody());
                            });

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
                              "${sectionTypeList[index].name}",
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
