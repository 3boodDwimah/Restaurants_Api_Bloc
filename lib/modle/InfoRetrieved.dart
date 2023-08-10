class InfoRetrieved {
  bool? success;
  Data? data;
  String? message;

  InfoRetrieved({this.success, this.data, this.message});

  InfoRetrieved.fromJson(Map<String, dynamic> json) {
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
  String? facebook;
  String? instagram;
  String? whatsApp;

  Data({this.facebook, this.instagram, this.whatsApp});

  Data.fromJson(Map<String, dynamic> json) {
    facebook = json['facebook'];
    instagram = json['instagram'];
    whatsApp = json['whatsApp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facebook'] = this.facebook;
    data['instagram'] = this.instagram;
    data['whatsApp'] = this.whatsApp;
    return data;
  }
}
