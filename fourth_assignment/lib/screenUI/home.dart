import 'package:flutter/material.dart';
import 'package:fourth_assignment/screenUI/bottomnavigation.dart';
import 'package:fourth_assignment/screenUI/drawerwidget.dart';
import 'package:fourth_assignment/screenUI/imagewidget.dart';
import 'package:fourth_assignment/screenUI/listviewwidget.dart';
import 'package:fourth_assignment/screenUI/tabbarwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manish Widget Menu '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 70),
                    textStyle: TextStyle(fontSize: 24),
                    primary: Colors.amberAccent),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Imagewidget()));
                },
                child: Text("Image Widget")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 70),
                    textStyle: TextStyle(fontSize: 24),
                    primary: Color.fromARGB(255, 255, 64, 160)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tabbarwidget()));
                },
                child: Text("Tab Bar Widget")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 70),
                    textStyle: TextStyle(fontSize: 24),
                    primary: Color.fromARGB(255, 118, 255, 64)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Drawerwidget()));
                },
                child: Text("Drawer Widget")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 70),
                    textStyle: TextStyle(fontSize: 24),
                    primary: Color.fromARGB(255, 255, 64, 64)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Bottomnavigation()));
                },
                child: Text("Bottom Navigation")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 70),
                    textStyle: TextStyle(fontSize: 24),
                    primary: Color.fromARGB(255, 86, 64, 255)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Listviewwidget()));
                },
                child: Text("List View Widget")),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
