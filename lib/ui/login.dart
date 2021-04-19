// import 'package:flutter/material.dart';
//
// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     var screenHeight = MediaQuery.of(context).size.height;
//     var screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           Center(child: Image.asset("images/main_logo.png",width: screenWidth/2,height: screenHeight/2,),),
//         ],
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:hospitals/ui/dashboard.dart';
import 'package:hospitals/utils/mySql.dart';
import 'package:mysql1/mysql1.dart';

import 'home_page.dart';

const users = const {
  'admin@gmail.com': "666666",
};

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// var hashPass;

class _LoginScreenState extends State<LoginScreen> {
  Duration get loginTime => Duration(milliseconds: 2250);
  var passController = TextEditingController();

  var hashPass;

  fun() {
    setState(() {
      var bytes = utf8.encode(passController.text); // data being hashed
      hashPass = sha1.convert(bytes);
    });
  }

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
    fun();
    // print("Digest as hex string: $hashPass");
    return Scaffold(
      body: FlutterLogin(
        // title: '$mail',
        logo: 'images/main_logo.png',
        onLogin: _authUser,
        onSignup: _authUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
        },
        onRecoverPassword: _recoverPassword,
      ),
    );
  }

  var db = new Mysql();
  var mail = '';

  void _getCustomer() {
    db.getConnection().then((conn) {
      String sql = 'select mail from company.customer where id = 10;';
      conn.query(sql).then((results) {
        for (var row in results) {
          setState(() {
            mail = row[0];
          });
        }
      });
      conn.close();
    });
  }

  void create() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'sql332.main-hosting.eu',
      port: 3306,
      user: 'u437282027_hospital',
      db: 'u437282027_hospital',
      password: "66201055Mpa",
    ));
    String sql =
        'CREATE TABLE Users (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255), email varchar(255), password varchar(255), type varchar(255), dateTime datetime)';
    await conn.query(sql);
    // print(conn.query(sql).toString());
  }

  void insert() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'sql332.main-hosting.eu',
      port: 3306,
      user: 'u437282027_hospital',
      db: 'u437282027_hospital',
      password: "66201055Mpa",
    ));
    var result = await conn.query(
        'insert into Users (name, email, password, type, dateTime) values (?, ?, ?, ?, ?)',
        ['kahraba', 'kahraba@bob.com', "$hashPass", "Admin", "12/2/2000"]);
    var results = await conn.query(
        'select name, email, password, type, dateTime from Users where id = ?',
        [result.insertId]);
    for (var row in results) {
      print(
          'Name: ${row[0]} email: ${row[1]} password: ${row[2]} type: ${row[3]} dateTime: ${row[4]}');
    }
  }

  void get() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'sql332.main-hosting.eu',
      port: 3306,
      user: 'u437282027_hospital',
      db: 'u437282027_hospital',
      password: "66201055Mpa",
    ));
    var results = await conn.query(
        'select name, email, password, dateTime, type from Users where name = ?',
        ["kahraba"]);
    for (var row in results) {
      print(
          'Name: ${row[0]} email: ${row[1]} password: ${row[2]} dateTime: ${row[3]} type: ${row[4]} ');
      if (row[2] == hashPass) {
        print("yes");
      } else {
        print("no");
      }

      print(hashPass);
    }
  }

  void update() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'sql332.main-hosting.eu',
      port: 3306,
      user: 'u437282027_hospital',
      db: 'u437282027_hospital',
      password: "66201055Mpa",
    ));
    var results = await conn
        .query('update Users set password=?', ["${hashPass.toString()}"]);
    for (var row in results) {
      print(
          'Name: ${row[0]} email: ${row[1]} password: ${row[2]} dateTime: ${row[3]} type: ${row[4]} ');
    }
  }
}
