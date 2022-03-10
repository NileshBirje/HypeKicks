// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/constants.dart';
import 'package:hypekicks_snkrs/models/product.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            Text(""),
          ],
        ),
        RichText(
            text: TextSpan(
                style: TextStyle(color: kTextColor),
                children: [
              TextSpan(text: "Size\n"),
              TextSpan(
                  text: "US${product.size}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold))
            ]))
      ],
    );
  }
}