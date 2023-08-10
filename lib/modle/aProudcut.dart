class aProductModel {
  bool? success;
  List<ProductData>? data;
  String? message;
  aProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <ProductData>[];
      json['data'].forEach((v) {
        data!.add(new ProductData.fromJson(v));
      });
    }
    message = json['message'];
  }

}

class ProductData {
  var id;
  var categoryId;
  var varietiesId;
  String? name;
  String? description;
  String? image;
  var price;
  var count;
  var valueReview;
  var value=0;


  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    varietiesId = json['varieties_id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
    count = json['count'];
    valueReview = json['valueReview'];
    value = json['value'];
  }
}