// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/main.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(), appBar: buildAppBar(context));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      title: Text(
        "HypeKicks",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      // leading: IconButton(
      //     onPressed: () {Navigator.pop(context);},
      //     icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),

      // below code is for menu button instead of back button... comment aboce leading code and uncomment below leading code to switch
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () async {
          _showPopupMenu(context);
        },
        color: Colors.white,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}

void _showPopupMenu(BuildContext context) async {
  await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 80, 100, 100),
      items: [
        PopupMenuItem(
            child: MaterialButton(
          onPressed: () {},
          child: Text("My Orders"),
        )),
        PopupMenuItem(
            child: ActionChip(
          label: Text("Logout"),
          onPressed: () {
            logOut(context);
          },
        ))
      ],
      elevation: 8.0);
}

Future<void> logOut(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  // Navigator.of(context)
  //     .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context) => MyApp()), (route) => false);
}
