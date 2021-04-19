import 'package:flutter/material.dart';

import '../../ApiFunctions/api.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';

class HospitalsView extends StatefulWidget {
  @override
  _HospitalsViewState createState() => _HospitalsViewState();
}

class _HospitalsViewState extends State<HospitalsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      // gettingData();
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  gettingData() {
    setState(() {
      Api(context).GetCreateApi(_scaffoldKey);

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
                    height: 100,
                  ),
                  Text(
                    "الأنشاءات" + " (${CreatorsList.length})",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  Center(
                      child: Container(
                        padding: EdgeInsets.all(200),
                        // width: screenWidth / 2,
                        // height: screenHeight ,
                        child: ListView.builder(
                          shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: CreatorsList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Card(
                                  elevation: 10,
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.all(100.0),
                                    onTap: () {},
                                    title: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.arrow_back,
                                          size: 30,
                                        ),
                                        Container(
                                          // width: screenWidth/6,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${CreatorsList[index].name}",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              SizedBox(width: 100,),
                                              Icon(Icons.local_hospital,size: 50,color: Colors.red,),
                                            ],
                                          ),
                                        )
                                      ],
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
