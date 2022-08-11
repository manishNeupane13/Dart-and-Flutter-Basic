import 'package:flutter/material.dart';

class Drawerwidget extends StatefulWidget {
  const Drawerwidget({Key? key}) : super(key: key);

  @override
  _DrawerwidgetState createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manish drawer'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 150,
                child: ClipOval(
                  child: Image.asset(
                    "assets/logo.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              accountName: Text(
                "Manish Neupane",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              accountEmail: Text("neupanemanes@gmail.com"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Favourite"),
                    leading: Icon(Icons.favorite_border),
                  ),
                  ListTile(
                    title: Text("Workflow"),
                    leading: Icon(Icons.workspaces_outline),
                  ),
                  ListTile(
                    title: Text("Update"),
                    leading: Icon(Icons.update),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  ListTile(
                    title: Text("Plugins"),
                    leading: Icon(Icons.account_tree_outlined),
                  ),
                  ListTile(
                    title: Text("Notifications"),
                    leading: Icon(Icons.notifications_outlined),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
