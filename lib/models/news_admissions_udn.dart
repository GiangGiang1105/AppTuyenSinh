class News_admissions_udn {
  final String id;
  final String name;
  final String image;
  final String created_at;
  final String detailType;
  final String detailTypeData;

  News_admissions_udn(
      {this.id,
      this.name,
      this.image,
      this.created_at,
      this.detailType,
      this.detailTypeData});

  factory News_admissions_udn.fromJson(Map<String, dynamic> json) {
    return News_admissions_udn(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        created_at: json["created_at"],
        detailType: json["detailType"],
        detailTypeData: json["detailTypeData"]);
  }
}
