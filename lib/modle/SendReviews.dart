class ReviewModel {
  bool? success;
  Data? data;
  String? message;

  ReviewModel({this.success, this.data, this.message});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? productId;
  String? customerName;
  String? reviewValue;
  String? reviewDescription;
  String? imagesForProduct;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.productId,
        this.customerName,
        this.reviewValue,
        this.reviewDescription,
        this.imagesForProduct,
        this.updatedAt,
        this.createdAt,
        this.id});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    customerName = json['customer_name'];
    reviewValue = json['review_value'];
    reviewDescription = json['review_description'];
    imagesForProduct = json['images_for_product'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['customer_name'] = this.customerName;
    data['review_value'] = this.reviewValue;
    data['review_description'] = this.reviewDescription;
    data['images_for_product'] = this.imagesForProduct;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
