import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _address = TextEditingController();
  final pages = [
    Home(),
    Favourite(),
    Contact(),
  ];
  var currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manish Bottom Navigation'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          selectedItemColor: Colors.amberAccent,
          backgroundColor: Colors.deepOrange,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), 
                label: "E-Mail")
          ]),
          body: pages[currentindex],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Home"),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 70),
                textStyle: TextStyle(fontSize: 24),
                primary: Colors.redAccent,
                onPrimary: Colors.yellow),
            onPressed: () {
              print("Pressed");
            },
            child: Text("Save Information"))
      ],
    );
  }
}

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Enter your name:"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Enter your email:"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Enter your address:"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        IconButton(
            onPressed: (() => {print("saving information")}),
            icon: Icon(Icons.accessible_forward)),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.grey,
          child: Row(
            children: [
              FlutterLogo(
                size: 50,
              ),
              const Text("Welcome to flutter",
                  style: const TextStyle(color: Colors.deepPurple)),
              Icon(Icons.widgets)
            ],
          ),
        ),
        Container(
          height: 350,
          width: 350,
          color: Colors.red,
          child: Row(
            children: [
              Image.asset(
                "assets/lumbini.jpg",
                height: 100,
                width: 100,
                scale: 0.8,
              ),
              const Text("Lumbini",
                  style: const TextStyle(color: Colors.white70)),
              Icon(Icons.place_outlined)
            ],
          ),
        )
      ],
    );
  }
}
