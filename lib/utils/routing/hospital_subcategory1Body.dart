import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/hospital_subcategory2Body.dart';

class HospitalsSubcategory1Body extends StatefulWidget {
  @override
  _HospitalsSubcategory1BodyState createState() =>
      _HospitalsSubcategory1BodyState();
}

class _HospitalsSubcategory1BodyState extends State<HospitalsSubcategory1Body> {
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
      Api(context).WorkTypesApi(_scaffoldKey);
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
                height: 100,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: screenWidth / 6.2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0XffE9A4A7),
                          Color(0XffD2B0C3),
                        ]),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "طبيعة العمل",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: screenWidth / 1.7,
                height: screenHeight / 2,
                child: GridView.builder(
                  itemCount: workTypesList.length,
                  // itemCount: workTypesList.length,
                  physics: NeverScrollableScrollPhysics(),
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
                          WorkTypeGlobal = workTypesList[index].name;
                        });
                        // Api(context).PostWorkApi(_scaffoldKey,workTypesList[index].name);
                        navigateAndClearStack(context, HospitalsSubcategory2Body()

                            // Constructions(
                            //   currentIndex: 5,
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
                          "${workTypesList[index].name}",
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
      ),
    );
  }
}
