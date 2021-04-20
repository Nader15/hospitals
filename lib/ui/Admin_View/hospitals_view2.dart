import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ApiFunctions/shared.dart';
import 'package:hospitals/models/admin_view_model.dart';
import 'package:hospitals/ui/global.dart';

import 'package:hospitals/ui/Input_View/utils/Navigator.dart';

class HospitalsView2 extends StatefulWidget {
  final int id;
  final String title;

  HospitalsView2({this.title, this.id});

  @override
  _HospitalsView2State createState() => _HospitalsView2State();
}

class _HospitalsView2State extends State<HospitalsView2> {
  AdminViewModel adminViewModel;


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      gettingData();
      print("dataaaaaaa1::::${dataView()}");
    });
  }

  gettingData() {
    setState(() {
      // Api(context).GetAdminViewApi(_scaffoldKey, widget.id);
      Api(context).GetAdminViewApi2(_scaffoldKey, widget.id);
      print("dataaaaaaa2::::${dataView()}");
      // adminView;
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
                    "${widget.title}",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Center(
                      child: Container(
                    width: screenWidth / 1.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${dataView.toString()}"),
                      ],
                    ),
                  ))
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
