import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newhome extends StatelessWidget {
  const Newhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Mlijo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_sharp),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        elevation: 20.0,
        // backgroundColor: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: CircleAvatar(
                radius: 35,
                child: Image.asset('assets/images/icon_car.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Commeer",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 28,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
            Container()


          ],
        ),
      ),
    );
  }
}
