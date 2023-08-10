class CartsUpdate {
  bool? success;
  List<Data>? data;
  String? message;
  CartsUpdate.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

}

class Data {
  var id;
  var productId;
  var orderType;
  var count;
  var total;
  var tableNum;
  var createdAt;
  var updatedAt;
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    orderType = json['orderType'];
    count = json['count'];
    total = json['total'];
    tableNum = json['table_num'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}