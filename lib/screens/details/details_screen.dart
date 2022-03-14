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
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
    );
  }
}
