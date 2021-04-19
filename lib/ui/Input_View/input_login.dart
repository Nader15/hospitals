import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:hospitals/ui/Admin_View/admin_view.dart';
import 'package:hospitals/ui/Input_View/input_view.dart';
import 'package:hospitals/ui/dashboard_test.dart';

const users = const {
  'input@gmail.com': "666666",
};

class InputLogin extends StatefulWidget {
  @override
  _InputLoginState createState() => _InputLoginState();
}

// var hashPass;

class _InputLoginState extends State<InputLogin> {
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
        logo: 'images/main_logo.png',
        onLogin: _authUser,
        onSignup: _authUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => InputView(),
          ));
        },
        onRecoverPassword: _recoverPassword,
      ),
    );
  }
}
