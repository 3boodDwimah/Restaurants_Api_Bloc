class DoneAddForCartTable {
  bool? success;
  Data? data;
  String? message;

  DoneAddForCartTable({this.success, this.data, this.message});

  DoneAddForCartTable.fromJson(Map<String, dynamic> json) {
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
  int? num;
  String? nameTable;
  String? timeRequest;

  Data({this.num, this.nameTable, this.timeRequest});

  Data.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    nameTable = json['nameTable'];
    timeRequest = json['time Request'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.num;
    data['nameTable'] = this.nameTable;
    data['time Request'] = this.timeRequest;
    return data;
  }
}
