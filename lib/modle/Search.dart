class SearchModel {
  bool? success;
  List<Data>? data;
  String? message;

  SearchModel({this.success, this.data, this.message});

  SearchModel.fromJson(Map<String, dynamic> json) {
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
  String? photo;
  int? price;

  Data(
      {this.id,
        this.categoryId,
        this.varietiesId,
        this.name,
        this.description,
        this.photo,
        this.price});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    varietiesId = json['varieties_id'];
    name = json['name'];
    description = json['description'];
    photo = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['varieties_id'] = this.varietiesId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.photo;
    data['price'] = this.price;
    return data;
  }
}
