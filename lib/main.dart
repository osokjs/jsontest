import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsontest/config/my_config.dart';
import 'package:jsontest/my_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX/sqflite test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // brightness: Brightness.dark,
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyAppHome()),
        GetPage(name: '/config', page: () => MyConfig()),
        // GetPage(name: '/group_list', page: () => GroupList()),
      ],
    );
  }
}

