import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:hospitals/ui/Admin_View/admin_view.dart';
import 'package:hospitals/ui/dashboard_test.dart';
import 'package:hospitals/ui/global.dart';


const users = const {
  'admin@gmail.com': "666666",
};

class AdminLogin extends StatefulWidget {
  @override
  _AdminLoginState createState() => _AdminLoginState();
}

// var hashPass;

class _AdminLoginState extends State<AdminLogin> {
  Duration get loginTime => Duration(milliseconds: 2250);
  var passController = TextEditingController();

  var hashPass;


  // Random salt generated

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        // title: '$mail',
        logo: Logo,
        onLogin: _authUser,
        onSignup: _authUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => AdminView(),
          ));
        },
        onRecoverPassword: _recoverPassword,
      ),
    );
  }


}
