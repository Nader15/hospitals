import 'package:flutter/material.dart';
import 'package:hospitals/ui/dashboard.dart';
import 'package:hospitals/ui/test.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "first-app",
    home: Dashboard(),
    // home: Draft(),
  ));
}