import 'dart:convert';
/// data : [{"name":"Ambulance Service","banner":"https://osudkini.com/public/uploads/all/ajCLYBVI4fTcS5iojwrQ0LW6q8XW5oX1IEmUwrK3.png","icon":"https://osudkini.com/public/uploads/all/ajCLYBVI4fTcS5iojwrQ0LW6q8XW5oX1IEmUwrK3.png","links":{"products":"https://osudkini.com/api/v1/products/category/40","sub_categories":"https://osudkini.com/api/v1/sub-categories/40"}},{"name":"Baby","banner":"https://osudkini.com/public/uploads/all/vWDy8rjoWjtetGmDB1Hb24Baw0QMeQG7YQaSDlxQ.png","icon":"https://osudkini.com/public/uploads/all/vWDy8rjoWjtetGmDB1Hb24Baw0QMeQG7YQaSDlxQ.png","links":{"products":"https://osudkini.com/api/v1/products/category/128","sub_categories":"https://osudkini.com/api/v1/sub-categories/128"}},{"name":"Diabetes Medicine","banner":"","icon":"","links":{"products":"https://osudkini.com/api/v1/products/category/53","sub_categories":"https://osudkini.com/api/v1/sub-categories/53"}},{"name":"Imported","banner":"","icon":"","links":{"products":"https://osudkini.com/api/v1/products/category/149","sub_categories":"https://osudkini.com/api/v1/sub-categories/149"}},{"name":"Insulin","banner":"","icon":"","links":{"products":"https://osudkini.com/api/v1/products/category/147","sub_categories":"https://osudkini.com/api/v1/sub-categories/147"}},{"name":"Necessary Products","banner":"https://osudkini.com/public/uploads/all/lBQYPGdsrAJ7FiJBrUtC27myoVHxaLT0iU4RhD9l.png","icon":"https://osudkini.com/public/uploads/all/lBQYPGdsrAJ7FiJBrUtC27myoVHxaLT0iU4RhD9l.png","links":{"products":"https://osudkini.com/api/v1/products/category/50","sub_categories":"https://osudkini.com/api/v1/sub-categories/50"}},{"name":"Online Doctor","banner":"https://osudkini.com/public/uploads/all/7AaU2AIcVULryXrRWLfJuR9VQQ1DdRca8PwgQ8DJ.png","icon":"https://osudkini.com/public/uploads/all/7AaU2AIcVULryXrRWLfJuR9VQQ1DdRca8PwgQ8DJ.png","links":{"products":"https://osudkini.com/api/v1/products/category/44","sub_categories":"https://osudkini.com/api/v1/sub-categories/44"}},{"name":"OTC Medicines","banner":"https://osudkini.com/public/uploads/all/4FgLRA9bXNxkJ5SWmQYOY8FS9OhHlUrb7LYdLX0v.png","icon":"https://osudkini.com/public/uploads/all/4FgLRA9bXNxkJ5SWmQYOY8FS9OhHlUrb7LYdLX0v.png","links":{"products":"https://osudkini.com/api/v1/products/category/52","sub_categories":"https://osudkini.com/api/v1/sub-categories/52"}},{"name":"Prescription Medicines","banner":"https://osudkini.com/public/uploads/all/pF0NgaOLSYYZ5g6kbEVvEYDWB6giJNXf9sEdBjrP.png","icon":"https://osudkini.com/public/uploads/all/pF0NgaOLSYYZ5g6kbEVvEYDWB6giJNXf9sEdBjrP.png","links":{"products":"https://osudkini.com/api/v1/products/category/3","sub_categories":"https://osudkini.com/api/v1/sub-categories/3"}},{"name":"Skin","banner":"https://osudkini.com/public/uploads/all/AOdI1qlIBKAzWCV2IaopTJgtXiLxsKTsKSRzGaVd.png","icon":"https://osudkini.com/public/uploads/all/AOdI1qlIBKAzWCV2IaopTJgtXiLxsKTsKSRzGaVd.png","links":{"products":"https://osudkini.com/api/v1/products/category/32","sub_categories":"https://osudkini.com/api/v1/sub-categories/32"}}]
/// success : true
/// status : 200

FamillyNeedsModel famillyNeedsModelFromJson(String str) => FamillyNeedsModel.fromJson(json.decode(str));
String famillyNeedsModelToJson(FamillyNeedsModel data) => json.encode(data.toJson());
class FamillyNeedsModel {
  FamillyNeedsModel({
      List<Data>? data, 
      bool? success, 
      num? status,}){
    _data = data;
    _success = success;
    _status = status;
}

  FamillyNeedsModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _success = json['success'];
    _status = json['status'];
  }
  List<Data>? _data;
  bool? _success;
  num? _status;
FamillyNeedsModel copyWith({  List<Data>? data,
  bool? success,
  num? status,
}) => FamillyNeedsModel(  data: data ?? _data,
  success: success ?? _success,
  status: status ?? _status,
);
  List<Data>? get data => _data;
  bool? get success => _success;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['success'] = _success;
    map['status'] = _status;
    return map;
  }

}

/// name : "Ambulance Service"
/// banner : "https://osudkini.com/public/uploads/all/ajCLYBVI4fTcS5iojwrQ0LW6q8XW5oX1IEmUwrK3.png"
/// icon : "https://osudkini.com/public/uploads/all/ajCLYBVI4fTcS5iojwrQ0LW6q8XW5oX1IEmUwrK3.png"
/// links : {"products":"https://osudkini.com/api/v1/products/category/40","sub_categories":"https://osudkini.com/api/v1/sub-categories/40"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? name, 
      String? banner, 
      String? icon, 
      Links? links,}){
    _name = name;
    _banner = banner;
    _icon = icon;
    _links = links;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _banner = json['banner'];
    _icon = json['icon'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  String? _name;
  String? _banner;
  String? _icon;
  Links? _links;
Data copyWith({  String? name,
  String? banner,
  String? icon,
  Links? links,
}) => Data(  name: name ?? _name,
  banner: banner ?? _banner,
  icon: icon ?? _icon,
  links: links ?? _links,
);
  String? get name => _name;
  String? get banner => _banner;
  String? get icon => _icon;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['banner'] = _banner;
    map['icon'] = _icon;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

/// products : "https://osudkini.com/api/v1/products/category/40"
/// sub_categories : "https://osudkini.com/api/v1/sub-categories/40"

Links linksFromJson(String str) => Links.fromJson(json.decode(str));
String linksToJson(Links data) => json.encode(data.toJson());
class Links {
  Links({
      String? products, 
      String? subCategories,}){
    _products = products;
    _subCategories = subCategories;
}

  Links.fromJson(dynamic json) {
    _products = json['products'];
    _subCategories = json['sub_categories'];
  }
  String? _products;
  String? _subCategories;
Links copyWith({  String? products,
  String? subCategories,
}) => Links(  products: products ?? _products,
  subCategories: subCategories ?? _subCategories,
);
  String? get products => _products;
  String? get subCategories => _subCategories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['products'] = _products;
    map['sub_categories'] = _subCategories;
    return map;
  }

}