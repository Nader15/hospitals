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
      body: SingleChildScrollView(
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
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(5))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text("نوع الخدمة")),
                                                Expanded(
                                                    child: Text("نسب التنفيذ")),
                                                Expanded(
                                                    child: Text(
                                                        "الميعاد المتوقع للتسليم")),
                                                Expanded(
                                                    child:
                                                        Text("مقاول التنفيذ")),
                                                Expanded(
                                                    child: Text(
                                                        "العدادات المياة")),
                                                Expanded(child: Text("الصرف")),
                                                Expanded(
                                                    child:
                                                        Text("توريد المحول")),
                                                Expanded(
                                                    child:
                                                        Text("تركيب المحول")),
                                                Expanded(
                                                    child: Text(
                                                        "موقف التيار الكهربي")),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(),
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Opacity(
                                            opacity: 0.4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text("نوع الخدمة")),
                                                Expanded(
                                                    child: Text("نسب التنفيذ")),
                                                Expanded(
                                                    child: Text(
                                                        "الميعاد المتوقع للتسليم")),
                                                Expanded(
                                                    child:
                                                        Text("مقاول التنفيذ")),
                                                Expanded(
                                                    child: Text(
                                                        "العدادات المياة")),
                                                Expanded(child: Text("الصرف")),
                                                Expanded(
                                                    child:
                                                        Text("توريد المحول")),
                                                Expanded(
                                                    child:
                                                        Text("تركيب المحول")),
                                                Expanded(
                                                    child: Text(
                                                        "موقف التيار الكهربي")),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
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
                                    Text("إظهار 1 إلى 1 من 1 مدخلات"),
                                    Container(
                                      width: screenWidth / 8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
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
                                                color: Colors.blueAccent,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
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
                                                      BorderRadius.circular(5)),
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
                              )
                            ],
                          ),
                          Card(
                            elevation: 10,
                            child: Container(
                              width: screenWidth / 5,
                              height: screenHeight / 1.2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: centerTapped
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'حي المرج',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text(
                                          'حي المطرية',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text(
                                          'حي عين شمس',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text(
                                          'حي السلام أول',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Text(
                                          'حي مصر الجديدة',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ],
                                    )
                                  : sectionsTapped
                                      ? Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'وحدة شرق',
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              'وحدة جنوب',
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              'وحدة غرب',
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text(
                                              'وحدة شمال',
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        )
                                      : hospitalTapped
                                          ? Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  'مستشفى السعودي الألماني',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'مستشفى النزهة الدولي',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'المركز الطبي العالمي',
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                Text(
                                                  'مستشفى سرطان الأطفال 57357',
                                                  style:
                                                      TextStyle(fontSize: 17),
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
                              title: Text('الانشاءات',
                                  style: TextStyle(fontSize: 20)),
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
                                              hospitalTapped = true;
                                            });
                                          },
                                          leading: Icon(Icons.arrow_back),
                                          trailing: Text(
                                            'المستشفيات',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
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
}
