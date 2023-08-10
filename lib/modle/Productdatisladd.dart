class ProductModel {
  bool? success;
  Dataa? data;
  String? message;

  ProductModel({this.success, this.data, this.message});

  ProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Dataa.fromJson(json['data']) : null;
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

class Dataa {
  var id;
  var employeId;
  var categoryId;
  var varietiesId;
  var name;
  var description;
  var photo;
  var price;
  var priceAfterDiscount;
  var discount;
  var quantity;
  var deletedAt;
  var createdAt;
  var updatedAt;
  var valueReview;
  var countReview;
  var value;

  Dataa(
      {this.id,
        this.employeId,
        this.categoryId,
        this.varietiesId,
        this.name,
        this.description,
        this.photo,
        this.price,
        this.priceAfterDiscount,
        this.discount,
        this.quantity,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.valueReview,
        this.countReview,
        this.value});

  Dataa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeId = json['employe_id'];
    categoryId = json['category_id'];
    varietiesId = json['varieties_id'];
    name = json['name'];
    description = json['description'];
    photo = json['photo'];
    price = json['price'];
    priceAfterDiscount = json['price_after_discount'];
    discount = json['discount'];
    quantity = json['quantity'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    valueReview = json['valueReview'];
    countReview = json['countReview'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['employe_id'] = this.employeId;
    data['category_id'] = this.categoryId;
    data['varieties_id'] = this.varietiesId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['photo'] = this.photo;
    data['price'] = this.price;
    data['price_after_discount'] = this.priceAfterDiscount;
    data['discount'] = this.discount;
    data['quantity'] = this.quantity;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['valueReview'] = this.valueReview;
    data['countReview'] = this.countReview;
    data['value'] = this.value;
    return data;
  }
}