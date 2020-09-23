class ShopModel {
  String name;
  String image;
  String price;
  String banner;

  ShopModel({this.name, this.image, this.price,this.banner});

  ShopModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
    banner = json['banner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['banner'] = this.banner;
    return data;
  }
}
