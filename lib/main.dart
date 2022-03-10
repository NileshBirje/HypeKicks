// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/screens/home/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hypekicks",
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _showPopupMenu(context);
              }),
          title: Text(
            "HypeKicks",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 200,
                    padding: EdgeInsets.only(top: 40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Image.asset('assets/images/Logo.png'),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Email:'),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  cursorColor: Colors.black,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password:',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password?',
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 22 )),
                ),
              )
            ],
          ),
        ));
  }
}

void _showPopupMenu(BuildContext context) async {
  await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 80, 100, 100),
      items: [
        PopupMenuItem(child: Text("My orders")),
        PopupMenuItem(child: Text("My orders")),
      ],
      elevation: 8.0);
}
