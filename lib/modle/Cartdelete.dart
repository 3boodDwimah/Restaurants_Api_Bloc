class Cartsdelete {
  bool? success;
  Data? data;
  String? message;

  Cartsdelete({this.success, this.data, this.message});

  Cartsdelete.fromJson(Map<String, dynamic> json) {
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
  int? id;
  int? productId;
  int? tabelId;
  int? orderType;
  int? count;
  int? total;
  String? tableNum;
  String? orderstatus;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.productId,
        this.tabelId,
        this.orderType,
        this.count,
        this.total,
        this.tableNum,
        this.orderstatus,
        this.deletedAt,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    tabelId = json['tabel_id'];
    orderType = json['orderType'];
    count = json['count'];
    total = json['total'];
    tableNum = json['table_num'];
    orderstatus = json['orderstatus'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['tabel_id'] = this.tabelId;
    data['orderType'] = this.orderType;
    data['count'] = this.count;
    data['total'] = this.total;
    data['table_num'] = this.tableNum;
    data['orderstatus'] = this.orderstatus;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
