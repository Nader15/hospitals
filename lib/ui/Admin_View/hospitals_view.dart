import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/shared.dart';
import 'package:hospitals/ui/Admin_View/hospitals_view2.dart';
import 'package:hospitals/ui/global.dart';

import '../../ApiFunctions/api.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';

class HospitalsView extends StatefulWidget {
  @override
  _HospitalsViewState createState() => _HospitalsViewState();
}

class _HospitalsViewState extends State<HospitalsView> {
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
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Align(
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
                    height: screenHeight/20,
                  ),
                  Text(
                    "الأنشاءات" + " (${CreatorsList.length})",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  Center(
                      child: Container(
                    padding: EdgeInsets.all(50),
                    // width: screenWidth / 2,
                    // height: screenHeight ,
                    child: GridView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: screenWidth > 1200 ? 3 : 1,
                          childAspectRatio: 4,
                          mainAxisSpacing: 40,
                          crossAxisSpacing: 50,
                        ),
                        itemCount: CreatorsList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              navigateAndKeepStack(
                                  context,
                                  HospitalsView2(
                                    index: index,
                                    title: CreatorsList[index].name,
                                  ));

                            },
                            child: Card(
                              elevation: 5,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "${CreatorsList[index].name}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ),
                          );
                        }),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
