

class Reviews {
  bool? success;
  List<ReviewsData>? data;
  String? message;


  Reviews.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['ReviewsData'] != null) {
      data = <ReviewsData>[];
      json['ReviewsData'].forEach((v) {
        data!.add(new ReviewsData.fromJson(v));
      });
    }
    message = json['message'];
  }

}

class ReviewsData {
  int? id;
  int? productId;
  String? customerName;
  String? reviewValue;
  String? reviewDescription;
  String? imagesForProduct;



  ReviewsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    customerName = json['customer_name'];
    reviewValue = json['review_value'];
    reviewDescription = json['review_description'];
    imagesForProduct = json['images_for_product'];
  }

}