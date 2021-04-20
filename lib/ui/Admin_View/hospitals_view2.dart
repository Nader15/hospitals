import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ApiFunctions/shared.dart';
import 'package:hospitals/models/admin_view_model.dart';
import 'package:hospitals/ui/global.dart';

import 'package:hospitals/ui/Input_View/utils/Navigator.dart';

class HospitalsView2 extends StatefulWidget {
  final int index;
  final String title;

  HospitalsView2({this.title, this.index});

  @override
  _HospitalsView2State createState() => _HospitalsView2State();
}

class _HospitalsView2State extends State<HospitalsView2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      // gettingData();
      print("dataaaaaaa1::::${dataView}");
    });
  }

  gettingData() {
    setState(() {
      // Api(context).GetAdminViewApi(_scaffoldKey, widget.id);
      Api(context).GetAdminViewApi2(_scaffoldKey, dataView);
      print("dataaaaaaa2::::${dataView}");
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
                            textAlign: TextAlign.center,
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
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  SizedBox(
                    height: screenHeight / 8,
                  ),
                  Center(
                      child: Container(
                    // width: screenWidth / 1.5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Column(
                        children: [
                          screenWidth > 1200
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "طبيعة العمل",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: screenWidth / 5,
                                          child: Text(
                                            "${CreatorsList[widget.index].type}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "نوع المنشأة",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: screenWidth / 5,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${CreatorsList[widget.index].unittype}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "إدارة",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: screenWidth / 5,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${CreatorsList[widget.index].departments}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "المحافظة",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: screenWidth / 5,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${CreatorsList[widget.index].governorate}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : screenWidth < 500
                                  ? Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "المحافظة",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: screenWidth / 1.5,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${CreatorsList[widget.index].governorate}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "إدارة",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: screenWidth / 1.5,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${CreatorsList[widget.index].departments}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "نوع المنشأة",
                                              style: TextStyle(fontSize: 25),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              width: screenWidth / 1.5,
                                              child: Text(
                                                "${CreatorsList[widget.index].unittype}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "طبيعة العمل",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: screenWidth / 1.5,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${CreatorsList[widget.index].type}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "إدارة",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: screenWidth / 5,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].departments}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "المحافظة",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: screenWidth / 5,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].governorate}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "طبيعة العمل",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: screenWidth / 5,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].type}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "نوع المنشأة",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: screenWidth / 5,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].unittype}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                          SizedBox(
                            height: 40,
                          ),
                          screenWidth > 1200
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "مقاول التنفيذ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: screenWidth / 5,
                                          child: Text(
                                            "${CreatorsList[widget.index].contractor}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "تاريخ الإستلام المتوقع",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: screenWidth / 5,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${CreatorsList[widget.index].datedelivery}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "تاريخ الإستلام المقرر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: screenWidth / 5,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "${CreatorsList[widget.index].databasic}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "نسبة التنفيذ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: screenWidth / 5,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "%${CreatorsList[widget.index].excutionpercentage}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.pink.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(10),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : screenWidth < 500
                                  ? Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "نسبة التنفيذ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: screenWidth / 1.5,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "%${CreatorsList[widget.index].excutionpercentage}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "تاريخ الإستلام المقرر",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: screenWidth / 1.5,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${CreatorsList[widget.index].databasic}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "تاريخ الإستلام المتوقع",
                                              style: TextStyle(fontSize: 25),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              width: screenWidth / 1.5,
                                              child: Text(
                                                "${CreatorsList[widget.index].datedelivery}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "مقاول التنفيذ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: screenWidth / 1.5,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${CreatorsList[widget.index].contractor}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pink
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              padding: EdgeInsets.all(10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "تاريخ الإستلام المقرر",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: screenWidth / 5,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].databasic}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "نسبة التنفيذ",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: screenWidth / 5,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "%${CreatorsList[widget.index].excutionpercentage}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "مقاول التنفيذ",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: screenWidth / 5,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].contractor}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "تاريخ الإستلام المتوقع",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: screenWidth / 5,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "${CreatorsList[widget.index].datedelivery}",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.pink
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  padding: EdgeInsets.all(10),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                          //ERwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5

                          SizedBox(
                            height: 40,
                          ),
                          screenWidth > 1200
                              ? Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "الصرف",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth / 5,
                                    child: Text(
                                      "${CreatorsList[widget.index].exchange}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "المياة",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].water}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "الإستشاري",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].advisor}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "تاريخ اخر تحديث",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].updatedAt.split("T")[0]} , ${CreatorsList[widget.index].updatedAt.split("T")[1].split(".")[0]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                            ],
                          )
                              : screenWidth < 500
                              ? Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "تاريخ اخر تحديث",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 1.5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].updatedAt.split("T")[0]} , ${CreatorsList[widget.index].updatedAt.split("T")[1].split(".")[0]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "الإستشاري",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 1.5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].advisor}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "المياة",
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth / 1.5,
                                    child: Text(
                                      "${CreatorsList[widget.index].water}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "الصرف",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 1.5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].exchange}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                            ],
                          )
                              : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "الإستشاري",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: screenWidth / 5,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${CreatorsList[widget.index].advisor}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "تاريخ اخر تحديث ",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: screenWidth / 5,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${CreatorsList[widget.index].updatedAt.split("T")[0]} , ${CreatorsList[widget.index].updatedAt.split("T")[1].split(".")[0]}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "الصرف",
                                        style:
                                        TextStyle(fontSize: 25),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: screenWidth / 5,
                                        child: Text(
                                          "${CreatorsList[widget.index].exchange}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "المياة",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: screenWidth / 5,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${CreatorsList[widget.index].water}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          screenWidth > 1200
                              ? Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "إطلاق التيار الكهربي",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth / 5,
                                    child: Text(
                                      "${CreatorsList[widget.index].thepositionoftheelectriccurrent}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "تركيب المحول",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].adapterinstallation}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "توريد المحول",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].transformersupply}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "الحماية المدنية",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].civilProtection}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                        Colors.pink.withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                            ],
                          )
                              : screenWidth < 500
                              ? Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "الحماية المدنية",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 1.5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].civilProtection}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "توريد المحول",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 1.5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].transformersupply}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "تركيب المحول",
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,  
                                    width: screenWidth / 1.5,
                                    child: Text(
                                      "${CreatorsList[widget.index].adapterinstallation}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "إطلاق التيار الكهربي",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth / 1.5,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${CreatorsList[widget.index].thepositionoftheelectriccurrent}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            25)),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                            ],
                          )
                              : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "توريد المحول",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: screenWidth / 5,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${CreatorsList[widget.index].transformersupply}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "الحماية المدنية",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: screenWidth / 5,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${CreatorsList[widget.index].civilProtection}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "إطلاق التيار الكهربي",
                                        style:
                                        TextStyle(fontSize: 25),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: screenWidth / 5,
                                        child: Text(
                                          "${CreatorsList[widget.index].thepositionoftheelectriccurrent}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "تركيب المحول",
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: screenWidth / 5,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "${CreatorsList[widget.index].adapterinstallation}",
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(fontSize: 30),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                                .withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(
                                                25)),
                                        padding: EdgeInsets.all(10),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
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
