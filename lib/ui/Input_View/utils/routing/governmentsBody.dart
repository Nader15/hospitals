import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/global.dart';
import 'package:hospitals/ui/Input_View/utils/routing/departmentsBody.dart';

class GovernmentsBody extends StatefulWidget {
  @override
  _GovernmentsBodyState createState() => _GovernmentsBodyState();
}

class _GovernmentsBodyState extends State<GovernmentsBody> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 0), () {
      // gettingData();
    });
  }

  gettingData() {
    setState(() {
      Api(context).GetGovernmentApi(_scaffoldKey);
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
                    "المحافظــــات",
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                  SizedBox(
                    height:screenHeight > 800
                        ? screenHeight / 10
                        : screenHeight / 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(50),
                    // width: screenWidth / 1.7,
                    // height: screenHeight / 2,
                    child: GridView.builder(
                      itemCount: governmentsList.length,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: screenWidth > 1200 ? 3 : 1,
                        childAspectRatio: 4,
                        mainAxisSpacing: 60,
                        crossAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              govGlobal = governmentsList[index].name;
                              print(
                                  "hello we are heeeeeere :::${governmentsList[index].name}");
                              navigateAndKeepStack(
                                  context,
                                  DepartementsBody(
                                    idGov: governmentsList[index].id,
                                  ));
                            });
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
                              "${governmentsList[index].name}",
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
          ],
        ),
      ),
    );
  }
}
