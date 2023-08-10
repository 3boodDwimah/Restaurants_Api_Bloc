class NewproductsModel {
  bool? success;
  List<Data>? data;
  String? message;

  NewproductsModel({this.success, this.data, this.message});

  NewproductsModel.fromJson(Map<String, dynamic> json) {
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
  String? nameCategory;
  var idCategory;
  List<Info>? info;

  Data({this.nameCategory, this.idCategory, this.info});

  Data.fromJson(Map<String, dynamic> json) {
    nameCategory = json['name Category'];
    idCategory = json['id Category'];
    if (json['info'] != null) {
      info = <Info>[];
      json['info'].forEach((v) {
        info!.add(new Info.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name Category'] = this.nameCategory;
    data['id Category'] = this.idCategory;
    if (this.info != null) {
      data['info'] = this.info!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  String? nameVarieties;
  List<Products>? products;

  Info({this.nameVarieties, this.products});

  Info.fromJson(Map<String, dynamic> json) {
    nameVarieties = json['name varieties'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name varieties'] = this.nameVarieties;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  var id;
  var employeId;
  var categoryId;
  int? varietiesId;
  String? name;
  String? description;
  String? photo;
  var price;
  var priceAfterDiscount;
  var discount;
  var quantity;
  var deletedAt;
  String? createdAt;
  String? updatedAt;

  Products(
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
        this.updatedAt});

  Products.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}
