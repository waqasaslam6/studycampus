class LesVilles {
  String name;
  String backgroundImage;
  String bannerText;

  LesVilles({this.name, this.backgroundImage, this.bannerText});

  LesVilles.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    backgroundImage = json['backgroundImage'];
    bannerText = json['bannerText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['backgroundImage'] = this.backgroundImage;
    data['bannerText'] = this.bannerText;
    return data;
  }
}
