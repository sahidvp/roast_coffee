import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  double? price;
  @HiveField(3)
  String? currency;
  @HiveField(4)
  String? makingTime;
  @HiveField(5)
  double? rating;
  @HiveField(6)
  int? ratingCount;
  @HiveField(7)
  String? imageUrl;

  ProductModel(
      {this.id,
      this.name,
      this.price,
      this.currency,
      this.makingTime,
      this.rating,
      this.ratingCount,
      this.imageUrl});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price']?.toDouble(),
      currency: json['currency'],
      makingTime: json['making_time'],
      rating: json['rating']?.toDouble(),
      ratingCount: json['rating_count'],
      imageUrl: json['image_url'],
    );
  }

  // Convert ProductModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'currency': currency,
      'making_time': makingTime,
      'rating': rating,
      'rating_count': ratingCount,
      'image_url': imageUrl,
    };
  }
}
