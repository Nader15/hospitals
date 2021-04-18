class ExchangeModel {
  int id;
  String name;
  String publishedAt;
  String createdAt;
  String updatedAt;

  ExchangeModel(
      {this.id, this.name, this.publishedAt, this.createdAt, this.updatedAt});

  ExchangeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
