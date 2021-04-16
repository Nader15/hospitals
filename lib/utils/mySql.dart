import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'sql332.main-hosting.eu',
      user = 'u437282027_hospital',
      password = '66201055Mpa',
      db = 'u437282027_hospital';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host,
        port: port,
        user: user,
        password: password,
        db: db
    );
    return await MySqlConnection.connect(settings);
  }
}

