import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/sectionBody.dart';

class DepartementsBody extends StatefulWidget {
  final int idGov;

  DepartementsBody({this.idGov});

  @override
  _DepartementsBodyState createState() => _DepartementsBodyState();
}

class _DepartementsBodyState extends State<DepartementsBody> {
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
          .filterDepartmenApi(_scaffoldKey, widget.idGov, items)
          .then((value) {
        setState(() {
          items = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build ::::::::::::: ${items.length}");
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "الأدارات" + " (${items.length})",
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
                    setState(() {
                      depIdGlobal = items[index].id;
                    });
                      navigateAndKeepStack(context, SectionBody());
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
