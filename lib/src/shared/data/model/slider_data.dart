class SliderData {
  String? image;
  String? title;
  String? description;

  SliderData({this.image, this.title, this.description});

  factory SliderData.fromJson(Map<String, dynamic> json) {
    return SliderData(
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'description': description,
    };
  }
}
