// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hypekicks_snkrs/constants.dart';
import 'package:hypekicks_snkrs/models/product.dart';
import 'package:hypekicks_snkrs/screens/details/details_screen.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "SNKRS",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.red[700]),
            ),
          ),
          Categories(),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: 50),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 20),
              itemBuilder: (context, index) => ItemCard(
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]),
                    )),
                product: products[index],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Air Jordan",
    "Yeezy",
    "T-Shirt",
    "Air Force",
    "Dunk"
  ];
  int selectedIndex = 0; //byDefault first category to be shown
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index),
          )),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? Colors.white
                        : Colors.grey[500]),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
