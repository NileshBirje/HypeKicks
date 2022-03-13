// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/models/product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            // height: 140,
            // width: 150,
            decoration: BoxDecoration(
                color: product.color, borderRadius: BorderRadius.circular(16)),
            child: TextButton(
              onPressed: () {
                press();
              },
              child: Image.asset(
                product.image,
              ),
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          product.title,
          style: TextStyle(color: kTextColor),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          product.price,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}