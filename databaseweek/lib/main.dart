import 'package:databaseweek/screenui/firebasecrud.dart';
import 'package:flutter/material.dart';
import 'package:databaseweek/screenui/sqlitecrud.dart';
import 'package:databaseweek/screenui/sqlitecrud.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD OPERATION',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: Sqlitecrud(),
    );
  }
}
