class GovernmentsModel {
  int id;
  String name;
  String publishedAt;
  String createdAt;
  String updatedAt;
  List<Axes> axes;

  GovernmentsModel(
      {this.id,
        this.name,
        this.publishedAt,
        this.createdAt,
        this.updatedAt,
        this.axes});

  GovernmentsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['axes'] != null) {
      axes = new List<Axes>();
      json['axes'].forEach((v) {
        axes.add(new Axes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.axes != null) {
      data['axes'] = this.axes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Axes {
  int id;
  String name;
  String publishedAt;
  String createdAt;
  String updatedAt;

  Axes({this.id, this.name, this.publishedAt, this.createdAt, this.updatedAt});

  Axes.fromJson(Map<String, dynamic> json) {
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
