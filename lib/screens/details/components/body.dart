import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/constants.dart';
import 'package:hypekicks_snkrs/models/product.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nike",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(product.title,
                          // style: TextStyle(color: Colors.white),
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: product.price,
                                style: Theme.of(context).textTheme.headline4),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}