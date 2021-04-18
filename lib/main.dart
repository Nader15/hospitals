import 'package:flutter/material.dart';
import 'package:hospitals/ui/Admin_View/admin_view.dart';
import 'package:hospitals/ui/Axes/axes_test.dart';
import 'file:///D:/Nadrinhoo/AndroidStudioProjects/hospitals/lib/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/dashboard.dart';
import 'package:hospitals/ui/home_page.dart';
import 'package:hospitals/ui/login.dart';
import 'package:hospitals/ui/test.dart';
import 'package:hospitals/utils/routing/hospital_subcategory1Body.dart';

import 'utils/routing/hospital_subcategory2Body.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),
      title: "first-app",
      // home: HospitalsSubcategory2Body(),
      home: HomePage()
      // home: AdminView()
      // home: AxesTest()
      // home: HospitalsSubcategory1Body(),
      // home: LoginScreen(),
    ),
  );
}
