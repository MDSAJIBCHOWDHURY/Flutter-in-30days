import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utils/my_routes.dart';
import 'package:first_app/widgets/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightThemeData(context),
        darkTheme: MyTheme.darkThemeData(context),
        routes: {
          MyRoutes.initialRoute: (context) => HomePage(),
          MyRoutes.loginPage: (context) => LoginPage(),
          MyRoutes.homePage: (context) => HomePage(),
        });
  }
}
