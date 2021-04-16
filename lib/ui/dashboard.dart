import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool govTapped = false;
  bool centerTapped = false;
  bool sectionsTapped = false;
  bool hospitalTapped = false;

  var workController = TextEditingController();
  var percentController = TextEditingController();
  var timeController = TextEditingController();
  var contractorController = TextEditingController();
  var engineerController = TextEditingController();
  var waterController = TextEditingController();
  var sewageController = TextEditingController();
  var transformerSupplyController = TextEditingController();
  var transformerInstallationController = TextEditingController();
  var electricController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screenWidth < 1300
          ? Center(
              child: Text("Do Full Screen Plz"),
            )
          : SingleChildScrollView(
              child: Container(
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: screenHeight,
                        width: screenWidth - (screenWidth / 6) - 10,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5))),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Center(
                                child: Card(
                                  elevation: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    // width: screenWidth/2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "الانشاءات",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.blueAccent),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SingleChildScrollView(
                                    child: Container(
                                      // alignment: Alignment.center,
                                      width: screenWidth / 1.23,
                                      height: screenHeight / 1.21,
                                      decoration: BoxDecoration(
                                          // color:Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Container(
                                        height: 20,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Center(
                                                child: Card(
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    width: screenWidth / 5,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              10,
                                                          child: Container(
                                                            height: 60,
                                                            // width: 50,
                                                            child:
                                                                PopupMenuButton(
                                                              icon: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SizedBox(
                                                                    width: 150,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          workController,
                                                                    ),
                                                                  ),
                                                                  Icon(Icons
                                                                      .arrow_drop_down_sharp),
                                                                ],
                                                              ),
                                                              onSelected:
                                                                  workChoiceAction,
                                                              itemBuilder:
                                                                  (BuildContext
                                                                      context) {
                                                                return workConstants
                                                                    .workChoices
                                                                    .map((String
                                                                        choice) {
                                                                  return PopupMenuItem<
                                                                          String>(
                                                                      value:
                                                                          choice,
                                                                      child: Text(
                                                                          choice));
                                                                }).toList();
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Text("طبيعة العمل"),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 50,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text("مقاول التنفيذ"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                              "ميعاد متوقع للتنفيذ"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text("نسب التنفيذ"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 50,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                              "الحماية المدنية"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text("الصرف"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text("المياة"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 50,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 20),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                              "موقف التيار الكهربي"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text("تركيب المحول"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          left: 10, right: 10),
                                                      width: screenWidth / 5,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                10,
                                                            child: Container(
                                                              height: 60,
                                                              // width: 50,
                                                              child:
                                                                  PopupMenuButton(
                                                                icon: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          150,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            workController,
                                                                      ),
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_drop_down_sharp),
                                                                  ],
                                                                ),
                                                                onSelected:
                                                                    workChoiceAction,
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return workConstants
                                                                      .workChoices
                                                                      .map((String
                                                                          choice) {
                                                                    return PopupMenuItem<
                                                                            String>(
                                                                        value:
                                                                            choice,
                                                                        child: Text(
                                                                            choice));
                                                                  }).toList();
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Text("توريد المحول"),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              SizedBox(
                                                height: screenHeight / 30,
                                              ),
                                              // Container(
                                              //   height: 60,
                                              //   width:
                                              //       MediaQuery.of(context)
                                              //               .size
                                              //               .width /
                                              //           2.5,
                                              //   child:
                                              // ),
                                              Center(
                                                child: Card(
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "ملاحظات",
                                                          style: TextStyle(
                                                              fontSize: 20),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        LayoutBuilder(builder:
                                                            (context,
                                                                constrains) {
                                                          double localHeight =
                                                              constrains
                                                                  .maxHeight;
                                                          double localWidth =
                                                              constrains
                                                                  .maxWidth;
                                                          return SizedBox(
                                                            width:
                                                                localWidth / 2,
                                                            // height: localHeight/20,
                                                            child:
                                                                TextFormField(
                                                              maxLines: 5,
                                                              maxLength: 100,
                                                              decoration:
                                                                  InputDecoration(
                                                                      border:
                                                                          OutlineInputBorder()),
                                                            ),
                                                          );
                                                        }),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                              // Divider(),
                                              // Expanded(
                                              //   child: Padding(
                                              //       padding:
                                              //           EdgeInsets.all(20),
                                              //       child: ListView.builder(
                                              //           scrollDirection:
                                              //               Axis.vertical,
                                              //           itemCount: 1,
                                              //           itemBuilder:
                                              //               (context, index) {
                                              //             return header2();
                                              //           })),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: screenWidth / 4,
                                      padding: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text("تأكيد"),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5))),
                      height: screenHeight,
                      width: screenWidth / 6,
                      child: SingleChildScrollView(
                        child: new Card(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: <Widget>[
                                ExpansionTile(
                                  title: Text('المحافظات',
                                      style: TextStyle(fontSize: 20)),
                                  children: <Widget>[
                                    ExpansionTile(
                                      title: Text(
                                        'القاهرة',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = false;
                                              centerTapped = false;
                                              hospitalTapped = true;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المستشفيات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = false;
                                              centerTapped = true;
                                              hospitalTapped = false;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المراكز',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = true;
                                              centerTapped = false;
                                              hospitalTapped = false;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'الوحدات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text(
                                        'الجيزة',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = false;
                                              centerTapped = false;
                                              hospitalTapped = true;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المستشفيات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = false;
                                              centerTapped = true;
                                              hospitalTapped = false;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المراكز',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = true;
                                              centerTapped = false;
                                              hospitalTapped = false;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'الوحدات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      title: Text(
                                        'أسوان',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = false;
                                              centerTapped = false;
                                              hospitalTapped = true;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المستشفيات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = false;
                                              centerTapped = true;
                                              hospitalTapped = false;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المراكز',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              sectionsTapped = true;
                                              centerTapped = false;
                                              hospitalTapped = false;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'الوحدات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget header1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text("موقف التيار الكهربي", textAlign: TextAlign.center)),
        Expanded(child: Text("تركيب المحول", textAlign: TextAlign.center)),
        Expanded(child: Text("توريد المحول", textAlign: TextAlign.center)),
        Expanded(child: Text("الصرف", textAlign: TextAlign.center)),
        Expanded(child: Text("العدادات المياة", textAlign: TextAlign.center)),
        Expanded(child: Text("المهندس الاستشاري", textAlign: TextAlign.center)),
        Expanded(child: Text("مقاول التنفيذ", textAlign: TextAlign.center)),
        Expanded(
            child: Text("ميعاد متوقع للتسليم", textAlign: TextAlign.center)),
      ],
    );
  }

  Widget Inputs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: waterController,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: waterChoiceAction,
              itemBuilder: (BuildContext context) {
                return waterConstants.waterChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
          child: Container(
            height: 60,
            // width: 50,
            child: PopupMenuButton(
              icon: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: TextFormField(),
                  ),
                  Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
              onSelected: workChoiceAction,
              itemBuilder: (BuildContext context) {
                return workConstants.workChoices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: Container(
            height: 50,
            // width: 50,
            child: TextFormField(
              decoration: InputDecoration(prefix: Text("%")),
            ),
          ),
        ),
      ],
    );
  }

  void workChoiceAction(String choice) {
    if (choice == workConstants.ch2) {
      workController.text = workConstants.ch2;
    } else if (choice == workConstants.ch1) {
      workController.text = workConstants.ch1;
    } else {
      workController.text = workConstants.ch3;
    }
  }

  void waterChoiceAction(String choice) {
    if (choice == waterConstants.ch2) {
      waterController.text = waterConstants.ch2;
    } else if (choice == waterConstants.ch1) {
      waterController.text = waterConstants.ch1;
    } else {
      waterController.text = waterConstants.ch3;
    }
  }
}

class workConstants {
  static String ch1 = "انشاء جديد";
  static String ch2 = "تطوير";
  static String ch3 = "تطوير وانشاء جزئي";

  static List<String> workChoices = <String>[ch1, ch2, ch3];
}

class waterConstants {
  static String ch1 = "عمومي";
  static String ch2 = "بالسيارة";
  static String ch3 = "لم يتم";

  static List<String> waterChoices = <String>[ch1, ch2, ch3];
}
