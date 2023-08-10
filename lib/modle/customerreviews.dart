class CustomerReviews {
  bool? success;
  List<Data>? data;
  String? message;

  CustomerReviews({this.success, this.data, this.message});

  CustomerReviews.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  int? productId;
  String? customerName;
  String? reviewValue;
  String? reviewDescription;
  String? imagesForProduct;

  Data(
      {this.id,
        this.productId,
        this.customerName,
        this.reviewValue,
        this.reviewDescription,
        this.imagesForProduct});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    customerName = json['customer_name'];
    reviewValue = json['review_value'];
    reviewDescription = json['review_description'];
    imagesForProduct = json['images_for_product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['customer_name'] = this.customerName;
    data['review_value'] = this.reviewValue;
    data['review_description'] = this.reviewDescription;
    data['images_for_product'] = this.imagesForProduct;
    return data;
  }
}
