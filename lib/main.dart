import 'package:flutter/material.dart';
import 'package:hospitals/ui/dashboard.dart';
import 'package:hospitals/ui/home_page.dart';
import 'package:hospitals/ui/login.dart';
import 'package:hospitals/ui/test.dart';

import 'ui/login.dart';

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
      home: LoginScreen(),
      // home: LoginScreen(),
    ),
  );
}
