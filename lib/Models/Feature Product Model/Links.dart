class Links {
  Links({
      this.products, 
      this.subCategories,});

  Links.fromJson(dynamic json) {
    products = json['products'];
    subCategories = json['sub_categories'];
  }
  String? products;
  String? subCategories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['products'] = products;
    map['sub_categories'] = subCategories;
    return map;
  }

}