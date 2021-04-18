import 'package:flutter/material.dart';
import 'package:hospitals/ui/Admin_View/admin_login.dart';
import 'package:hospitals/ui/Input_View/input_login.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
              child: Center(
                child: Container(
                  width: screenWidth / 3,
                  height: screenHeight / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          navigateAndKeepStack(context, AdminLogin());
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: screenHeight / 10,
                            width: screenWidth / 10,
                            child: Text("Admin",style: TextStyle(fontSize: 30,color: Colors.red)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          navigateAndKeepStack(context, InputLogin());
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: screenHeight / 10,
                            width: screenWidth / 10,
                            child: Text("Input",style: TextStyle(fontSize: 30,color: Colors.red),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
