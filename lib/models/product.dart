// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price, company;
  final int size, id;
  final Color color;
  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.company,
      required this.color,
      required this.size});
}

List<Product> products = [
  Product(
      id: 1,
      company: "Nike",
      image: "assets/images/unc.png",
      title: "AJ1 UNC",
      description:
          "Familiar colours, applied with a classic colour-blocking scheme, characterise this Air Jordan 1. The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the model's clean and classic detailing.",
      price: "₹35,499",
      color: Color(0xFF3D82AE),
      size: 8),
  Product(
      id: 2,
      company: "Nike",
      image: "assets/images/AJ2.png",
      title: "AJ2 White&Varsity Red",
      description:
          "When the Air Jordan 2 debuted in 1986, it was the first sneaker to bring luxury detail to a peak sport performance silhouette. Made in Italy, original pairs featured a premium look and feel that quickly earned them an iconic spot in Air Jordan history. Inspired by the heritage and impact of this legendary sneaker, Off-White™ designer Virgil Abloh now adds to the legacy with his own personal homage to the Air Jordan 2 Low.",
      price: "₹18,999",
      color: Colors.redAccent.shade400,
      size: 9),
  Product(
      id: 3,
      company: "Nike",
      image: "assets/images/volt_gold.png",
      title: "AJ1 Volt Gold ",
      description:
          "This fresh take on the classic Air Jordan 1 draws design cues from previous AJ1 colourways that left a cultural mark. The tongue features exposed foam and a transparent, reversed tag for a deconstructed feel, while tri-tonal colourblocking in Volt, Sail and University Gold adds a burst of bright energy to the timeless silhouette.",
      price: "₹36,999",
      color: Color.fromARGB(255, 146, 132, 0),
      size: 7),
  Product(
      id: 4,
      company: "Nike",
      image: "assets/images/panda.png",
      title: "AJ1 Panda",
      description:
          "Add a twist to your sneaker rotation and grab the women's Jordan 1 Retro High Twist (W). This AJ 1 comes with a white upper plus black accents, black Nike “Swoosh”, white midsole, and a black sole. These sneakers released in May 2019 and retailed for 160.",
      price: "₹14,999",
      color: Color.fromARGB(255, 187, 187, 187),
      size: 8),
  Product(
      id: 5,
      company: "Nike",
      image: "assets/images/retro_high.png",
      title: "AJ1 Retro-High ",
      description:
          "The Air Jordan 1 is a footwear pioneer—but the OG silhouette isn't too old to learn new tricks. The Air Jordan 1 KO repackages the famous design using a mix of leather and canvas to create a fit that's redesigned for comfort. This edition sports a classic colour scheme, with contrasting hits of black and white blended with Varsity Red.",
      price: "₹38,899",
      color: Colors.redAccent.shade400,
      size: 9),
  Product(
      id: 6,
      company: "Nike",
      image: "assets/images/AF1.png",
      title: "AF1 High Print",
      description:
          "Position your feet for the chill in this cosy AF-1, featuring a warm, insulated fill in key areas for classic cold-weather appeal. Make this hoops-inspired legend your very own, customising details from the materials on the top to the sole underfoot.",
      price: "₹21,499",
      color: Colors.pinkAccent,
      size: 10),
  Product(
      id: 7,
      company: "Nike",
      image: "assets/images/unc.png",
      title: "AJ1 UNC",
      description:
          "Familiar colours, applied with a classic colour-blocking scheme, characterise this Air Jordan 1. The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the model's clean and classic detailing.",
      price: "₹35,499",
      color: Color(0xFF3D82AE),
      size: 8),
  Product(
      id: 8,
      company: "Nike",
      image: "assets/images/AJ2.png",
      title: "AJ2 White&Varsity Red",
      description:
          "When the Air Jordan 2 debuted in 1986, it was the first sneaker to bring luxury detail to a peak sport performance silhouette. Made in Italy, original pairs featured a premium look and feel that quickly earned them an iconic spot in Air Jordan history. Inspired by the heritage and impact of this legendary sneaker, Off-White™ designer Virgil Abloh now adds to the legacy with his own personal homage to the Air Jordan 2 Low.",
      price: "₹18,999",
      color: Colors.redAccent.shade400,
      size: 9),
  Product(
      id: 9,
      company: "Nike",
      image: "assets/images/volt_gold.png",
      title: "AJ1 Volt Gold ",
      description:
          "This fresh take on the classic Air Jordan 1 draws design cues from previous AJ1 colourways that left a cultural mark. The tongue features exposed foam and a transparent, reversed tag for a deconstructed feel, while tri-tonal colourblocking in Volt, Sail and University Gold adds a burst of bright energy to the timeless silhouette.",
      price: "₹36,999",
      color: Color.fromARGB(255, 146, 132, 0),
      size: 7),
  Product(
      id: 10,
      company: "Nike",
      image: "assets/images/panda.png",
      title: "AJ1 Panda",
      description:
          "Add a twist to your sneaker rotation and grab the women's Jordan 1 Retro High Twist (W). This AJ 1 comes with a white upper plus black accents, black Nike “Swoosh”, white midsole, and a black sole. These sneakers released in May 2019 and retailed for 160.",
      price: "₹14,999",
      color: Color.fromARGB(255, 187, 187, 187),
      size: 8),
  Product(
      id: 11,
      company: "Nike",
      image: "assets/images/retro_high.png",
      title: "AJ1 Retro-High ",
      description:
          "The Air Jordan 1 is a footwear pioneer—but the OG silhouette isn't too old to learn new tricks. The Air Jordan 1 KO repackages the famous design using a mix of leather and canvas to create a fit that's redesigned for comfort. This edition sports a classic colour scheme, with contrasting hits of black and white blended with Varsity Red.",
      price: "₹38,899",
      color: Colors.redAccent.shade400,
      size: 9),
  Product(
      id: 12,
      company: "Nike",
      image: "assets/images/AF1.png",
      title: "AF1 High Print",
      description:
          "Position your feet for the chill in this cosy AF-1, featuring a warm, insulated fill in key areas for classic cold-weather appeal. Make this hoops-inspired legend your very own, customising details from the materials on the top to the sole underfoot.",
      price: "₹21,499",
      color: Colors.pinkAccent,
      size: 10)
];
