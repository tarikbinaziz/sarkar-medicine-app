import 'Links.dart';

class Data {
  Data({
      this.name, 
      this.banner, 
      this.icon, 
      this.links,});

  Data.fromJson(dynamic json) {
    name = json['name'];
    banner = json['banner'];
    icon = json['icon'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  String? name;
  String? banner;
  String? icon;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['banner'] = banner;
    map['icon'] = icon;
    if (links != null) {
      map['links'] = links!.toJson();
    }
    return map;
  }

}