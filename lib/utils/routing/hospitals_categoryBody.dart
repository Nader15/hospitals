import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/hospital_subcategory1Body.dart';

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
        child: Column(
          children: [
            Text(
              "المستشفيات" + " (${items.length})",
              style: TextStyle(color: Colors.black, fontSize: 50),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              width: screenWidth / 1.7,
              height: screenHeight / 2,
              child: GridView.builder(
                itemCount: items.length,
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
                      navigateAndClearStack(context, HospitalsSubcategory1Body()
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
    );
  }
}
