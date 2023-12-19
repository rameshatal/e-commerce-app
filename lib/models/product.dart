import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
    title: 'Wireless Headphones',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',
    image: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT1BFpSMMHhFBiHvqtPvcbeRw_nwFX7fDxEJ4nbtYk619ygBFR6',
    price: 120,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: 'Headphones',
    rate: 4.8,
  ),
  Product(
    title: 'Woman Sweter',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',
    image: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhWO7j-G11YU7iKG9g2FDh2zuRmTTdr8MxUGiAJN11WCZqP82V',
    price: 120,
    colors: [
      Colors.brown,
      Colors.red,
      Colors.pink,
    ],
    category: 'Woman Fashion',
    rate: 4.8,
  ),
  Product(
    title: 'Smart Watch',
    description:
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa55qd0ljN5soeUmRvg7OgmpKRl-Qoy21JOE2RE37892FhZ8G3',
    price: 55,
    colors: [
      Colors.black,
    ],
    category: 'Watch',
    rate: 4.8,
  ),
];
