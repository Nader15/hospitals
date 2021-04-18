import 'package:flutter/material.dart';
import 'package:hospitals/ApiFunctions/api.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/utils/Navigator.dart';
import 'package:hospitals/utils/global.dart';
import 'package:hospitals/utils/routing/departmentsBody.dart';

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
      gettingData();
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
              SizedBox(
                height: 100,
              ),
              Text(
                "المحافظــــات",
                style: TextStyle(color: Colors.black, fontSize: 50),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                width: screenWidth / 1.7,
                height: screenHeight / 2,
                child: GridView.builder(
                  itemCount: governmentsList.length,
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
                          govGlobal = governmentsList[index].name;
                        });
                        navigateAndKeepStack(
                            context,
                            DepartementsBody(
                              idGov: governmentsList[index].id,
                            )
                            // Constructions(
                            //   currentIndex: 1,
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
                          "${governmentsList[index].name}",
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
