// To parse this JSON data, do
//
//     final dealsOfTheModel = dealsOfTheModelFromJson(jsonString);

import 'dart:convert';

DealsOfTheModel dealsOfTheModelFromJson(String str) => DealsOfTheModel.fromJson(json.decode(str));

String dealsOfTheModelToJson(DealsOfTheModel data) => json.encode(data.toJson());

class DealsOfTheModel {
  DealsOfTheModel({
    required this.data,
    required this.success,
    required this.status,
  });

  Data data;
  bool success;
  int status;

  factory DealsOfTheModel.fromJson(Map<String, dynamic> json) => DealsOfTheModel(
    data: Data.fromJson(json["data"]),
    success: json["success"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "success": success,
    "status": status,
  };
}

class Data {
  Data({
    required this.title,
    required this.endDate,
    required this.products,
  });

  String title;
  int endDate;
  Products products;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    title: json["title"],
    endDate: json["end_date"],
    products: Products.fromJson(json["products"]),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "end_date": endDate,
    "products": products.toJson(),
  };
}

class Products {
  Products({
    required this.data,
  });

  List<Datum> data;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.name,
    required this.photos,
    required this.thumbnailImage,
    required this.basePrice,
    required this.baseDiscountedPrice,
    required this.todaysDeal,
    required this.featured,
    required this.unit,
    required this.discount,
    required this.discountType,
    required this.rating,
    required this.sales,
    required this.links,
  });

  String name;
  List<String> photos;
  String thumbnailImage;
  double basePrice;
  double baseDiscountedPrice;
  int todaysDeal;
  int featured;
  String unit;
  int discount;
  DiscountType discountType;
  int rating;
  int sales;
  Links links;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
    photos: List<String>.from(json["photos"].map((x) => x)),
    thumbnailImage: json["thumbnail_image"],
    basePrice: json["base_price"]?.toDouble(),
    baseDiscountedPrice: json["base_discounted_price"]?.toDouble(),
    todaysDeal: json["todays_deal"],
    featured: json["featured"],
    unit: json["unit"],
    discount: json["discount"],
    discountType: discountTypeValues.map[json["discount_type"]]!,
    rating: json["rating"],
    sales: json["sales"],
    links: Links.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "photos": List<dynamic>.from(photos.map((x) => x)),
    "thumbnail_image": thumbnailImage,
    "base_price": basePrice,
    "base_discounted_price": baseDiscountedPrice,
    "todays_deal": todaysDeal,
    "featured": featured,
    "unit": unit,
    "discount": discount,
    "discount_type": discountTypeValues.reverse[discountType],
    "rating": rating,
    "sales": sales,
    "links": links.toJson(),
  };
}

enum DiscountType { PERCENT, AMOUNT }

final discountTypeValues = EnumValues({
  "amount": DiscountType.AMOUNT,
  "percent": DiscountType.PERCENT
});

class Links {
  Links({
    required this.details,
    required this.reviews,
    required this.related,
    required this.topFromSeller,
  });

  String details;
  String reviews;
  String related;
  String topFromSeller;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    details: json["details"],
    reviews: json["reviews"],
    related: json["related"],
    topFromSeller: json["top_from_seller"],
  );

  Map<String, dynamic> toJson() => {
    "details": details,
    "reviews": reviews,
    "related": related,
    "top_from_seller": topFromSeller,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
