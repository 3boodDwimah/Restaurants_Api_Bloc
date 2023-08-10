class ProductCartsModel {
  bool? success;
  List<Datapro>? data;
  String? message;

  ProductCartsModel({this.success, this.data, this.message});

  ProductCartsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Datapro>[];
      json['data'].forEach((v) {
        data!.add(new Datapro.fromJson(v));
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

class Datapro {
  var productId;
  var count;
  var name;
  var id ;
  var price ;
  var photo ;

  Datapro({this.productId, this.count,
    this.name,
    this.id,
    this.price,
    this.photo,
  });

  Datapro.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    count = json['count'];
    name = json['name'];
    id = json['id'];
    price = json['price'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['count'] = this.count;
    data['name'] = this.name;
    data['id'] = this.id;
    data['price'] = this.price;
    data['photo'] = this.photo;
    return data;
  }
}
