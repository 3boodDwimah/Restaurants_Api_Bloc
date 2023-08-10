class DiscountValueModel {
  bool? success;
  Data? data;
  String? message;

  DiscountValueModel({this.success, this.data, this.message});

  DiscountValueModel.fromJson(Map<String, dynamic> json) {
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
  var sum;
  var discountValue;
  var allsum;

  Data({this.sum, this.discountValue, this.allsum});

  Data.fromJson(Map<String, dynamic> json) {
    sum = json['sum'];
    discountValue = json['discount value'];
    allsum = json['allsum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sum'] = this.sum;
    data['discount value'] = this.discountValue;
    data['allsum'] = this.allsum;
    return data;
  }
}
