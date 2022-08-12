import 'dart:convert';

List<OsonAptekModel> osonAptekModelFromJson(String str) =>
    List<OsonAptekModel>.from(
        json.decode(str).map((x) => OsonAptekModel.fromJson(x)));

String osonAptekModelToJson(List<OsonAptekModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OsonAptekModel {
  OsonAptekModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.fullName,
    required this.image,
    required this.price,
    required this.drugId,
  });

  int id;
  String name;
  String slug;
  String fullName;
  String image;
  int price;
  int drugId;

  factory OsonAptekModel.fromJson(Map<String, dynamic> json) => OsonAptekModel(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        slug: json["slug"] ?? "",
        fullName: json["full_name"] ?? "",
        image: json["image"] ?? "",
        price: json["price"] ?? 0,
        drugId: json["drug_id"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "full_name": fullName,
        "image": image,
        "price": price,
        "drug_id": drugId,
      };
}
