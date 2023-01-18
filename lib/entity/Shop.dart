// ignore_for_file: non_constant_identifier_names
import 'package:flutter_lab_4/entity/Results.dart';

class Shop {
  int? count;
  int? total_pages;
  int? per_page;
  int? current_page;
  List<Results>? results;

  Shop({
    this.count,
    this.total_pages,
    this.per_page,
    this.current_page,
    this.results,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      count: json['count'],
      total_pages: json['total_pages'],
      per_page: json['per_page'],
      current_page: json['current_page'],
      results:
          (json['results'] as List).map((e) => Results.fromJson(e)).toList(),
    );
  }
}
