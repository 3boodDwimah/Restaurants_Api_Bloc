class DrinkModel {
  bool? success;
  List<Data>? data;
  String? message;

  DrinkModel({this.success, this.data, this.message});

  DrinkModel.fromJson(Map<String, dynamic> json) {
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
  int? categoryId;
  int? varietiesId;
  String? name;
  String? description;
  Null? image;
  int? price;
  Null? countReview;
  Null? valueReview;
  int? value;

  Data(
      {this.id,
        this.categoryId,
        this.varietiesId,
        this.name,
        this.description,
        this.image,
        this.price,
        this.countReview,
        this.valueReview,
        this.value
      });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    varietiesId = json['varieties_id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
    countReview = json['countReview'];
    valueReview = json['valueReview'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['varieties_id'] = this.varietiesId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['price'] = this.price;
    data['countReview'] = this.countReview;
    data['valueReview'] = this.valueReview;
    data['value'] = this.value;
    return data;
  }
}
