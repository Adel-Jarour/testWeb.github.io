import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/screens/about_us_screen.dart';
import 'package:test_web/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.teal,
          ),
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.teal,
          textColor: Colors.teal,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/home_screen",
      getPages: [
        GetPage(name: "/home_screen", page: () => HomeScreen()),
        GetPage(name: "/about_us_screen", page: () => AboutUsScreen()),
      ],
    );
  }
}
