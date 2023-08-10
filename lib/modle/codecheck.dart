class Sum {
  bool? success;
  Data0a? data;
  String? message;

  Sum({this.success, this.data, this.message});

  Sum.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data0a.fromJson(json['data']) : null;
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

class Data0a {
  var sum;
  var discountValue;
  var allsum;

  Data0a({this.sum, this.discountValue, this.allsum});

  Data0a.fromJson(Map<String, dynamic> json) {
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
