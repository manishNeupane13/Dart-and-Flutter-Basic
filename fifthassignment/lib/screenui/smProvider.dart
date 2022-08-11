import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SmProviderDart extends StatefulWidget {
  const SmProviderDart({Key? key}) : super(key: key);

  @override
  _SmProviderDartState createState() => _SmProviderDartState();
}

class _SmProviderDartState extends State<SmProviderDart> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
            // title: Text(Provider.of<AppData>(context).name),
            // title: Text(context.watch<AppData>().name),
            title: Consumer<AppData>(
              builder: (context, value, child) {
                //return Text(context.watch<AppData>().name);
                return Text(value._name);
              },
            ),
          ),
          body: Screen2(),
        );
      },
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Center(
      child: Container(
        height: 500,
        width: 300,
        color: Colors.amberAccent,
        alignment: Alignment.center,
        child:Column(
          children: [
            Padding(padding:EdgeInsets.fromLTRB(5,15,5,15)),
            Screen3(),
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      height: 300,
      width: 300,
      color: Colors.pinkAccent,
      child: Padding(padding: EdgeInsets.fromLTRB(5,15,5,15),
      child:Column(
        children: [
          Screen4(),
          SizedBox(
            height: 15,
          ),
             Text(Provider.of<AppData>(context)._clzname),
            ElevatedButton(
                onPressed: () {
                  Provider.of<AppData>(context, listen: false)
                      .changeInstitude("Sunway College");
                },
                child: Text("Get College"))

        ],
      ),),
      // child: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child:Container(
        height: 150,
        width: 150,
        color: Color.fromARGB(0, 248, 38, 105),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      

          Text(Provider.of<AppData>(context).name),
          // Text(context.watch<AppData>().name),
          // Consumer<AppData>(
          //   builder: (context, value, child) {
          //     //return Text(context.watch<AppData>().name);
          //     return Text(value.name);
          //   },
          // ),

          ElevatedButton(
            onPressed: () {
              Provider.of<AppData>(context, listen: false)
                  .changeName("Manish Neupane");

              // context.read<AppData>().changeName("Manish Neupane");
            },
            child: Text('Change Name'),
          ),
        ],
      ),
      ), 
    );
  }
}

class AppData with ChangeNotifier {
  String _name = "Who are you?";
  String _clzname = "Where are Stuyding ?";

  void changeName(String data) {
    _name = data;
    notifyListeners();
  }

  void changeInstitude(String clzdata) {
    _clzname = clzdata;
    notifyListeners();
  }

  String get name => _name;
  String get clzname => _clzname;
}
