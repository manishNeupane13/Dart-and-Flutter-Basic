import 'package:flutter/material.dart';

class Statemanagement extends StatefulWidget {
  const Statemanagement({Key? key}) : super(key: key);

  @override
  _StatemanagementState createState() => _StatemanagementState();
}

class _StatemanagementState extends State<Statemanagement> {
  String text = "Manish Neupane";
  void changeText(String newString) {
    setState(() {
      text = newString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management Widget'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Screen2(
        text2: text,
        changeData: changeText,
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  String text2;
  final Function(String) changeData;
  Screen2({Key? key, required this.text2, required this.changeData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Center(
      child: Container(
          height: 500,
          width: 300,
          color: Colors.pinkAccent,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Screen Two",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Screen3(
                text3: text2,
                changeData: changeData,
              ),
            ],
          )),

      // child: Container(
      //   height: 500,
      //   width: 300,
      //   color: Colors.amberAccent,
      //   alignment: Alignment.center,

      //   child: Screen3(
      //     text3: text2,
      //     changeData: changeData,
      //   ),
      // ),
    );
  }
}

class Screen3 extends StatelessWidget {
  String text3;
  final Function(String) changeData;
  Screen3({Key? key, required this.text3, required this.changeData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      height:350,
      width:250,
      color: Colors.blueGrey,
      padding: EdgeInsets.fromLTRB(10,15,10,10),

      child: Column(
        
        children: [
          Text("Screen Three",style: TextStyle(fontSize: 18,fontStyle: FontStyle.normal),),
          SizedBox(
            height: 10,

          ),
           Screen4(
            text4: text3,
            changedata: changeData,
          ),

        ],
      ),
     
    );
  }
}

class Screen4 extends StatelessWidget {
  String text4;
  final Function(String) changedata;
  String ButtonText = "View My Address";
  Screen4({Key? key, required this.text4, required this.changedata})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.greenAccent,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text4),
          ElevatedButton(
            onPressed: () {
              changedata("I live in Kathmandu.");
              ButtonText = "View Name";
            },
            child: Text(ButtonText),
          ),
        ],
          ),
      ),
    );
  }
}
