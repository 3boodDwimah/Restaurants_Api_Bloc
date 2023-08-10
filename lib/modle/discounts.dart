class DiscountsModle {
  bool? success;
  List<Data>? data;
  String? message;

  DiscountsModle({this.success, this.data, this.message});

  DiscountsModle.fromJson(Map<String, dynamic> json) {
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
  String? discountsValue;

  Data({this.id, this.discountsValue});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discountsValue = json['discounts_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['discounts_value'] = this.discountsValue;
    return data;
  }
}
