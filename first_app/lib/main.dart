import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.blue,
        ),
        initialRoute: '/home',
        routes: {
          '/': (context) => LoginPage(),
          '/login': (context) => LoginPage(),
          '/home': (context)=> HomePage(),
        });
  }
}
