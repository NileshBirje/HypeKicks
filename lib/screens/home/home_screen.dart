// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(), appBar: buildAppBar(context));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "HypeKicks",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      // leading: IconButton(
      //     onPressed: () {
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (context) => MyApp()));
      //     },
      //     icon: Image.asset("assets/icons/back.png")),

      // below code is for menu button instead of back button... comment aboce leading code and uncomment below leading code to switch
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () async {
          _showPopupMenu(context);
        },
        color: Colors.black,
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/checkout.png")),
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
        PopupMenuItem(child: Text("My orders")),
        PopupMenuItem(child: Text("My orders")),
      ],
      elevation: 8.0);
}
