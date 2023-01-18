// ignore_for_file: non_constant_identifier_names
import 'package:flutter_lab_4/entity/Category.dart';

class Results {
  Category? category;
  String? name;
  String? details;
  String? size;
  String? colour;
  double? price;
  String? main_image;
  int? id;

  Results({
    this.category,
    this.name,
    this.details,
    this.size,
    this.colour,
    this.price,
    this.main_image,
    this.id,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      category: Category.fromJson(json['category']),
      name: json['name'],
      details: json['details'],
      size: json['size'],
      colour: json['colour'],
      price: json['price'],
      main_image: json['main_image'],
      id: json['id'],
    );
  }
}
