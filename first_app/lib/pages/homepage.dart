import 'package:first_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to $days days of flutter.',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
