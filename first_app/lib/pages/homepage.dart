import 'dart:convert';

import 'package:first_app/models/item.dart';
import 'package:first_app/models/people_item.dart';
import 'package:first_app/widgets/item.dart';
import 'package:first_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _loading();
  }

  void _loading() async {
    await Future.delayed(Duration(seconds: 5));
    final personJson = await rootBundle.loadString("assets/files/people.json");
    final decodeData = jsonDecode(personJson);
    final peopleData = decodeData["people"];
    PeopleItem.items =
        List.from(peopleData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
      ),
      body:(PeopleItem.items!=null && PeopleItem.items!.isNotEmpty)?ListView.builder(
        itemCount: PeopleItem.items!.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: PeopleItem.items!.elementAt(index));
        },
      ):Center(
        child: CircularProgressIndicator(
         color: Colors.yellow,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
