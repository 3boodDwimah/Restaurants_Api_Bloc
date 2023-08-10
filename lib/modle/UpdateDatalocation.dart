class UpdateDatalocation {
  bool? success;
  List<Data>? data;
  String? message;

  UpdateDatalocation({this.success, this.data, this.message});

  UpdateDatalocation.fromJson(Map<String, dynamic> json) {
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
  String? userName;
  String? userPhone;
  String? userLocation;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.userName,
        this.userPhone,
        this.userLocation,
        this.deletedAt,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    userPhone = json['user_phone'];
    userLocation = json['user_location'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['user_phone'] = this.userPhone;
    data['user_location'] = this.userLocation;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
