import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_web/constance/color_const.dart';
import 'package:test_web/screens/about_us_screen.dart';
import 'package:test_web/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 884),
      builder: (context, child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(
                color: ColorConst.primaryColor,
              ),
              backgroundColor: Colors.white,
              elevation: 2,
            ),
            listTileTheme: ListTileThemeData(
              iconColor: ColorConst.primaryColor,
              textColor: ColorConst.primaryColor,
            ),
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: "/home_screen",
          getPages: [
            GetPage(name: "/home_screen", page: () => HomeScreen()),
            GetPage(name: "/about_us_screen", page: () => const AboutUsScreen()),
          ],
        );
      }
    );
  }
}
