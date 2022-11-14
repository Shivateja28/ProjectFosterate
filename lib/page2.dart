// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List li = [
    "Offers",
    "Bills",
    "Visitor",
    "Rent",
    "Events",
    "Delivery",
    "Services",
    "View More"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 170,
                  height: 170,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("HI GANESH!!"), Text("Lanco Hills - 2292")],
            ),
            Icon(Icons.notifications_outlined)
          ],
        ),
        ListTile(
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
        ),
        Card(
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(
              8,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: GestureDetector(
                    onTap: () {
                      print(li[index]);
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(li[index]),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
