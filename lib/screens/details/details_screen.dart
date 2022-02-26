import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.transparent,
      backgroundColor: product.color,
      elevation: 15,
      shadowColor: Colors.black,
      // title: Text(product.title, style: TextStyle(fontWeight: FontWeight.bold)),
      leading: IconButton(
        icon: Image.asset("assets/icons/back.png"),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/checkout.png")),
      ],
    );
  }
}