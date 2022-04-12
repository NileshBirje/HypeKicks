// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../home/components/body.dart';

class Buy_button extends StatelessWidget {
  const Buy_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
      child: Container(
        height: 50,
        width: 450,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(13)),
        child: TextButton(
          child: Text(
            "Buy Now".toUpperCase(),
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: () {
            Fluttertoast.showToast(msg: "Item added to cart");
          },
        ),
      ),
    );
  }
}
