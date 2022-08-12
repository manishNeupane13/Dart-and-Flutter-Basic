import 'package:flutter/material.dart';
import 'package:fifthassignment/screenui/secondPage.dart';
class Registerpage extends StatefulWidget {
const Registerpage({Key? key}) : super(key: key);

  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
                SizedBox(
                height: 30,
              ),
              TextField(
                  controller: _nameController,
                  
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Name",
                      prefixIcon: Icon(Icons.text_fields)),
                ),
                  SizedBox(
                height: 30,
              ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your E-mail",
                      prefixIcon: Icon(Icons.email)),
                ),
                  SizedBox(
                height: 30,
              ),
                 TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Address",
                      prefixIcon: Icon(Icons.location_city)),
                ),
         
            
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: ((){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(
                  name:_nameController.text,
                  email:_emailController.text,
                  address: _addressController.text,
                )));

              }), child: Text("Go to Second Page"),)
            ],
          ),
        ),
      ),
    );
  }
}
