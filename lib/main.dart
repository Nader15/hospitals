import 'package:flutter/material.dart';
import 'package:hospitals/ui/Admin_View/admin_view.dart';
import 'package:hospitals/ui/Axes/axes_test.dart';
import 'package:hospitals/ui/Input_View/input_view.dart';
import 'package:hospitals/ui/dashboard/dashboard.dart';
import 'package:hospitals/ui/dashboard_test.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';
import 'package:hospitals/ui/test.dart';
import 'package:hospitals/ui/Input_View/utils/Navigator.dart';
import 'package:hospitals/ui/Input_View/utils/global.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),
      title: "first-app",
      // home: Dashboard(),
      // home: HomePage()
      // home: LoginScreen(),
      // home: GovernmentsBody(),
      // home: DashBoard()
      // home: AdminView()
      home: InputView()
      // home: AxesTest()
      // home: HospitalsSubcategory1Body(),
      // home: LoginScreen(),
    ),
  );
}
