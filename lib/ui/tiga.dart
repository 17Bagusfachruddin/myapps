import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final titles = ['A,B,C', 'A,B,C', 'A,B,C'];
  final deks = ["Subtilte A", "Subtilte B", "Subtilte C"];
  final iconRight = [Icons.access_time, Icons.accessibility, Icons.add_call];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(titles[index]),
            subtitle: Text(deks[index]),
            leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("assets/images/shopping-cart.png")),
            trailing: Icon(iconRight[index]),
          ));
        });
  }
}
