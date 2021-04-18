import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/home_page.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/hospitals_categoryBody.dart';

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
        child: Column(
          children: [
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
                      navigateAndKeepStack(context, HospitalsCategoryBody(idGov: widget.idGov,)
                          // Constructions(
                          //   currentIndex: 3,
                          // )
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
    );
  }
}
