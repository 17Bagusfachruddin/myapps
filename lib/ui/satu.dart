import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapps/ui/dua.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Sopir extends StatefulWidget {
  @override
  _SopirState createState() => _SopirState();
}

class _SopirState extends State<Sopir>
    with AutomaticKeepAliveClientMixin<Sopir> {
  int count = 10;

  void clear() {
    setState(() {
      count = 0;
    });
  }

  static List<String> Imglist = [
    // 'assets/images/satu',
    // 'assets/images/satu',
    'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
  ];

  static const titles = ['A,B,C', 'A,B,C', 'A,B,C'];
  static const deks = ["Subtilte A", "Subtilte B", "Subtilte C"];
  static const iconRight = [
    Icons.access_time,
    Icons.accessibility,
    Icons.add_call
  ];

  ////iki fungsi

  final iconKu = CarouselSlider(
    options: CarouselOptions(
      autoPlay: true,
    ),
    items: Imglist.map(
      (item) => Center(
        child: Image.network(
          item,
          fit: BoxFit.fill,
        ),
      ),
    ).toList(),
  );

  final ListKu = Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
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
          }));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        iconKu,
        ListKu,
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: GridView.count(
              crossAxisCount: 5,
              crossAxisSpacing: 1,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Second()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/icon_car.png'),
                          const Text('Sopir')
                        ],
                      )),
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/icon_car.png'),
                          const Text(
                            'Transfer Barang',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )),
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/icon_car.png'),
                          const Text('Bengkel')
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
