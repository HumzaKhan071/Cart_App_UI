// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bonus Assigment",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Mobi Sport",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag),
                iconSize: 30,
                color: Colors.black,
              ),
            ],
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Running",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "15 results",
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    abc(AssetImage("assets/1.png")),
                    SizedBox(height: 30),
                    abc(AssetImage("assets/2.png")),
                    SizedBox(height: 30),
                    abc(AssetImage("assets/3.png")),
                    SizedBox(height: 30),
                    abc(AssetImage("assets/1.png")),
                    SizedBox(height: 30),
                    abc(AssetImage("assets/2.png")),
                    SizedBox(height: 30),
                    abc(AssetImage("assets/3.png")),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.red,
          fixedColor: Colors.red,
          showUnselectedLabels: true,

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cabin,
                color: Colors.red,
              ),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.badge,
                color: Colors.red,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                label: "Person"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.red,
                ),
                label: "More")
          ],
        ),
      ),
    );
  }
}

Widget abc(AssetImage image) {
  return Column(
    children: [
      Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image(
                image: image,
                height: 60,
                width: 100,
              ),
              SizedBox(
                width: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 60,
                        child: Text(
                          "Nike",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "Ajsdahf",
                        style: TextStyle(
                          color: Colors.black26,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "99.99",
                        style: TextStyle(
                            color: Colors.black,
                            height: 0.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.backpack),
                    iconSize: 30,
                    color: Colors.red,
                  )),
            ],
          ),
        ),
      ),
    ],
  );
}
