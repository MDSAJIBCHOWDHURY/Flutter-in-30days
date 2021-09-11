import 'package:first_app/models/item_list.dart';
import 'package:first_app/widgets/item.dart';
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
      body: ListView.builder(
        itemCount: ItemList.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: ItemList.items[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
