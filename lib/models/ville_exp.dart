class VilleExpModel {
  String name;
  String icon;
  String top;

  VilleExpModel({this.name,this.icon,this.top});

  VilleExpModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
     top = json["top"];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon'] = this.icon;
     data['top'] = this.top;
    return data;
  }
}