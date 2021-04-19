class DeprtementModel {
  int id;
  String name;
  Governorate governorate;
  String publishedAt;
  String createdAt;
  String updatedAt;

  DeprtementModel(
      {this.id,
        this.name,
        this.governorate,
        this.publishedAt,
        this.createdAt,
        this.updatedAt});

  DeprtementModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    governorate = json['governorate'] != null
        ? new Governorate.fromJson(json['governorate'])
        : null;
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    if (this.governorate != null) {
      data['governorate'] = this.governorate.toJson();
    }
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Governorate {
  int id;
  String name;
  String publishedAt;
  String createdAt;
  String updatedAt;

  Governorate(
      {this.id, this.name, this.publishedAt, this.createdAt, this.updatedAt});

  Governorate.fromJson(Map<String, dynamic> json) {
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
