import 'package:flutter/material.dart';
import 'package:fourth_assignment/screenUI/listviewwidget.dart';

class Tabbarwidget extends StatefulWidget {
  const Tabbarwidget({Key? key}) : super(key: key);

  @override
  _TabbarwidgetState createState() => _TabbarwidgetState();
}

class _TabbarwidgetState extends State<Tabbarwidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Manish Tab Bar "),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Pofile Section",
            ),
            Tab(
              icon: Icon(Icons.star),
              text: "List Section ",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Others",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.jpg",
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "I'm Manish Neupane",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Listviewwidget(),
            Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  "Others",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
