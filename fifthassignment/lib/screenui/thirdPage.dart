import 'package:flutter/material.dart';
import 'package:fifthassignment/screenui/clickableListView.dart';
    
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text("Go to Second  Page"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.popUntil(context, ModalRoute.withName("/"));
              }),
              child: Text("Go to First  Page"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ClickableListView()));
              }),
              child: Text("Go to List View"),
            ),
          ],
        ),

      ),
    );
  }
}