class ProductModel {
  String? status;
  List<Datum>? data;

  ProductModel({
    this.status,
    this.data,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int? id;
  String? name;
  String? brand;
  String? image;
  String? price;
  String? description;

  Datum({
    this.id,
    this.name,
    this.brand,
    this.image,
    this.price,
    this.description,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        brand: json["brand"],
        image: json["image"],
        price: json["price"],
        description: json["description"],
      );
}
