class Cododis {
  bool? success;
  List<Data>? data;
  String? message;

  Cododis({this.success, this.data, this.message});

  Cododis.fromJson(Map<String, dynamic> json) {
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
  String? discountsCode;
  String? discountsValue;
  String? codeAfterCheck;

  Data({this.id, this.discountsCode, this.discountsValue, this.codeAfterCheck});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discountsCode = json['discounts_code'];
    discountsValue = json['discounts_value'];
    codeAfterCheck = json['code_after_check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['discounts_code'] = this.discountsCode;
    data['discounts_value'] = this.discountsValue;
    data['code_after_check'] = this.codeAfterCheck;
    return data;
  }
}
