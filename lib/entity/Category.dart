// ignore_for_file: non_constant_identifier_names

class Category {
  String? title;
  String? icon;
  int? id;

  Category({
    this.title,
    this.icon,
    this.id,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['name'],
      icon: json['icon'],
      id: json['id'],
    );
  }
}
