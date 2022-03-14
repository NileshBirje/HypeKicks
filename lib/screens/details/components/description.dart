import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/constants.dart';
import 'package:hypekicks_snkrs/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding + 50),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5, color: Colors.white),
      ),
    );
  }
}
