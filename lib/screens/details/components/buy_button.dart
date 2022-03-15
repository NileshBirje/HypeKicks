// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Buy_button extends StatelessWidget {
  const Buy_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
    ),
    child: Text(
      "Buy Now".toUpperCase(),
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    onPressed: () {},
      ),
    );
  }
}
