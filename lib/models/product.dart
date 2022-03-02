// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int size, id;
  final Color color;
  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.color,
      required this.size});
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/unc.png",
      title: "Air Jordan 1 UNC",
      description:
          "Familiar colours, applied with a classic colour-blocking scheme, characterise this Air Jordan 1. The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the model's clean and classic detailing.",
      price: "₹35,499",
      color: Color(0xFF3D82AE),
      size: 8),
  Product(
      id: 2,
      image: "assets/images/AJ2.png",
      title: "Air Jordan 2 Varsity Red",
      description: "description",
      price: "₹18,999",
      color: Colors.redAccent.shade700,
      size: 9),
  Product(
      id: 3,
      image: "assets/images/retro_high.png",
      title: "Air Jordan 1 Retro-High ",
      description:
          "The Air Jordan 1 is a footwear pioneer—but the OG silhouette isn't too old to learn new tricks. The Air Jordan 1 KO repackages the famous design using a mix of leather and canvas to create a fit that's redesigned for comfort. This edition sports a classic colour scheme, with contrasting hits of black and white blended with Varsity Red.",
      price: "₹38,899",
      color: Colors.redAccent.shade700,
      size: 9),
  Product(
      id: 4,
      image: "assets/images/volt_gold.png",
      title: "Air Jordan 1 Volt Gold ",
      description:
          "This fresh take on the classic Air Jordan 1 draws design cues from previous AJ1 colourways that left a cultural mark. The tongue features exposed foam and a transparent, reversed tag for a deconstructed feel, while tri-tonal colourblocking in Volt, Sail and University Gold adds a burst of bright energy to the timeless silhouette.",
      price: "₹36,999",
      color: Colors.yellow,
      size: 7),
  Product(
      id: 5,
      image: "assets/images/panda.png",
      title: "Air Jordan 1 Panda",
      description:
          "Add a twist to your sneaker rotation and grab the women's Jordan 1 Retro High Twist (W). This AJ 1 comes with a white upper plus black accents, black Nike “Swoosh”, white midsole, and a black sole. These sneakers released in May 2019 and retailed for 160.",
      price: "₹14,999",
      color: Colors.white,
      size: 8),
  Product(
      id: 6,
      image: "assets/images/AF1.png",
      title: "Air Force 1 High Print",
      description:
          "Position your feet for the chill in this cosy AF-1, featuring a warm, insulated fill in key areas for classic cold-weather appeal. Make this hoops-inspired legend your very own, customising details from the materials on the top to the sole underfoot.",
      price: "₹21,499",
      color: Colors.pinkAccent,
      size: 10)
];
