// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/constants.dart';
import 'package:hypekicks_snkrs/models/product.dart';

import 'ProductSize.dart';
import 'description.dart';

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
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                  ),
                  height: 735,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductSize(product: product),
                      Description(product: product),
                      CartCounter()
                    ],
                  ),
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
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                              child: Image.asset(
                            product.image,
                            fit: BoxFit.fitWidth,
                          ))
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

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
          iconData: Icons.remove,
          press: () {if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("01", style: Theme.of(context).textTheme.headline6),
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData iconData, required Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          onPressed: press.call(),
          child: Icon(iconData),
        ));
  }
}
