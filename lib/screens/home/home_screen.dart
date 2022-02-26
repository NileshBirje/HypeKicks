// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/main.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(), appBar: buildAppBar(context));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "HypeKicks",
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
      // leading: IconButton(
      //     onPressed: () {
      //       // Navigator.of(context)
      //       //     .push(MaterialPageRoute(builder: (context) => MyApp()));
      //     },
      //     icon: Image.asset("assets/icons/back.png")),
      leading: const Icon(
        Icons.menu,
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
