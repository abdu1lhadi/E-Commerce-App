import 'package:flutter/material.dart';

class Product {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String subDescribe;
  final String describe;
  final int price;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  const Product(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.subDescribe,
      required this.describe,
      required this.price,
      required this.isInSummer,
      required this.isInWinter,
      required this.isForFamilies});
}
