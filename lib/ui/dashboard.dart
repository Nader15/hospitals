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
                              Card(
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
                                        fontSize: 30, color: Colors.blueAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        elevation: 10,
                                        child: SingleChildScrollView(
                                          child: Container(
                                            // alignment: Alignment.center,
                                            width: screenWidth / 2,
                                            height: screenHeight / 2,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Container(
                                              height: 20,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: screenHeight / 5,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: GridView.builder(
                                                        shrinkWrap: true,
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return IntrinsicWidth(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                header1(),
                                                                Divider(),
                                                                Inputs()
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "ملاحظات",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight / 30,
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    width:
                                                    MediaQuery.of(context).size.width / 2.5,
                                                    child: PopupMenuButton(
                                                      icon: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                              padding: EdgeInsets.all(10),
                                                              width: 45,
                                                              height: 65,
                                                              decoration: BoxDecoration(
                                                                  color: Colors.white,
                                                                  borderRadius:
                                                                  BorderRadius.circular(5)),
                                                              child: Icon(Icons.ac_unit,color: Colors.red,)),
                                                          Container(
                                                            child: Row(
                                                              children: [
                                                                Text("SortBy",
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 17)),
                                                                Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_outlined,
                                                                  size: 30,
                                                                  color: Colors.white,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      // onSelected: ChoiceAction,
                                                      // itemBuilder: (BuildContext context) {
                                                      //   return Constants.Choices.map(
                                                      //           (String choice) {
                                                      //         return PopupMenuItem<String>(
                                                      //             value: choice,
                                                      //             child: Text(choice));
                                                      //       }).toList();
                                                      // },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight / 30,
                                                  ),
                                                  Expanded(
                                                    child: LayoutBuilder(
                                                        builder: (context,
                                                            constrains) {
                                                      double localHeight =
                                                          constrains.maxHeight;
                                                      double localWidth =
                                                          constrains.maxWidth;
                                                      return SizedBox(
                                                        width: localWidth / 2,
                                                        // height: localHeight/20,
                                                        child: TextFormField(
                                                          maxLines: 5,
                                                          maxLength: 100,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder()),
                                                        ),
                                                      );
                                                    }),
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
                                      Container(
                                        // alignment: Alignment.center,
                                        width: screenWidth / 2,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "إظهار 1 إلى 1 من المدخلات",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Container(
                                              width: screenWidth / 8,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Icon(
                                                        Icons.arrow_back,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.blueAccent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Text(
                                                      "1",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Icon(
                                                        Icons.arrow_forward,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container()
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Card(
                                    elevation: 10,
                                    child: Container(
                                      width: screenWidth / 5,
                                      height: screenHeight / 1.2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: centerTapped
                                          ? Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  'حي المرج',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'حي المطرية',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'حي عين شمس',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'حي السلام أول',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'حي مصر الجديدة',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                              ],
                                            )
                                          : sectionsTapped
                                              ? Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'وحدة شرق',
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                    Text(
                                                      'وحدة جنوب',
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                    Text(
                                                      'وحدة غرب',
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                    Text(
                                                      'وحدة شمال',
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ],
                                                )
                                              : hospitalTapped
                                                  ? Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          'مستشفى السعودي الألماني',
                                                          style: TextStyle(
                                                              fontSize: 17),
                                                        ),
                                                        Text(
                                                          'مستشفى النزهة الدولي',
                                                          style: TextStyle(
                                                              fontSize: 17),
                                                        ),
                                                        Text(
                                                          'المركز الطبي العالمي',
                                                          style: TextStyle(
                                                              fontSize: 17),
                                                        ),
                                                        Text(
                                                          'مستشفى سرطان الأطفال 57357',
                                                          style: TextStyle(
                                                              fontSize: 17),
                                                        ),
                                                      ],
                                                    )
                                                  : Container(),
                                    ),
                                  ),
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
            child:
                Text("ميعاد متوقع للتسليم", textAlign: TextAlign.center)),
        Expanded(child: Text("نسب التنفيذ")),
        Expanded(child: Text("طبيعة العمل")),
      ],
    );
  }

  Widget Inputs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
          child: TextFormField(),
        ),
      ],
    );
  }
}
