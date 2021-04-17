class HospitalsModel {
  int id;
  String name;
  Department department;
  String publishedAt;
  String createdAt;
  String updatedAt;

  HospitalsModel(
      {this.id,
        this.name,
        this.department,
        this.publishedAt,
        this.createdAt,
        this.updatedAt});

  HospitalsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    if (this.department != null) {
      data['department'] = this.department.toJson();
    }
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Department {
  int id;
  String name;
  int governorate;
  String publishedAt;
  String createdAt;
  String updatedAt;

  Department(
      {this.id,
        this.name,
        this.governorate,
        this.publishedAt,
        this.createdAt,
        this.updatedAt});

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    governorate = json['governorate'];
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['governorate'] = this.governorate;
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
