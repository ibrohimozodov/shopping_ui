import 'package:flutter/material.dart';

class Shop_Page extends StatefulWidget {
  const Shop_Page({super.key});

  @override
  State<Shop_Page> createState() => _Shop_PageState();
}

class _Shop_PageState extends State<Shop_Page> {
  List<String> ListItem = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 36,
                width: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Center(
                  child: Text("7"),
                ),
              ),
            ),
          ],
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "Apple Products",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/3.jpg"), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lifastyle sale",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 50,
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: Center(
                        child: Text(
                          "Shop",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: ListItem.map((image) => _itemist(image)).toList()),
            ),
          ]),
        ));
  }

  Widget _itemist(String image) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.heart_broken,
              color: Colors.red,
              size: 36,
            )
          ],
        ),
      ),
    );
  }
}
