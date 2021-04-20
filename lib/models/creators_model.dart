class CreatorsModel {
  int id;
  String name;
  String excutionpercentage;
  String datedelivery;
  String contractor;
  String water;
  String worknature;
  String exchange;
  String transformersupply;
  String civilProtection;
  String adapterinstallation;
  String thepositionoftheelectriccurrent;
  String notes;
  String type;
  String governorate;
  String departments;
  String unittype;
  String databasic;
  String advisor;
  dynamic stateNow;
  String publishedAt;
  String createdAt;
  String updatedAt;

  CreatorsModel(
      {this.id,
        this.name,
        this.excutionpercentage,
        this.datedelivery,
        this.contractor,
        this.water,
        this.worknature,
        this.exchange,
        this.transformersupply,
        this.civilProtection,
        this.adapterinstallation,
        this.thepositionoftheelectriccurrent,
        this.notes,
        this.type,
        this.governorate,
        this.departments,
        this.unittype,
        this.databasic,
        this.advisor,
        this.stateNow,
        this.publishedAt,
        this.createdAt,
        this.updatedAt});

  CreatorsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    excutionpercentage = json['Excutionpercentage'];
    datedelivery = json['Datedelivery'];
    contractor = json['contractor'];
    water = json['Water'];
    worknature = json['worknature'];
    exchange = json['Exchange'];
    transformersupply = json['Transformersupply'];
    civilProtection = json['CivilProtection'];
    adapterinstallation = json['Adapterinstallation'];
    thepositionoftheelectriccurrent = json['Thepositionoftheelectriccurrent'];
    notes = json['Notes'];
    type = json['type'];
    governorate = json['governorate'];
    departments = json['departments'];
    unittype = json['unittype'];
    databasic = json['databasic'];
    advisor = json['Advisor'];
    stateNow = json['StateNow'];
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['Excutionpercentage'] = this.excutionpercentage;
    data['Datedelivery'] = this.datedelivery;
    data['contractor'] = this.contractor;
    data['Water'] = this.water;
    data['worknature'] = this.worknature;
    data['Exchange'] = this.exchange;
    data['Transformersupply'] = this.transformersupply;
    data['CivilProtection'] = this.civilProtection;
    data['Adapterinstallation'] = this.adapterinstallation;
    data['Thepositionoftheelectriccurrent'] =
        this.thepositionoftheelectriccurrent;
    data['Notes'] = this.notes;
    data['type'] = this.type;
    data['governorate'] = this.governorate;
    data['departments'] = this.departments;
    data['unittype'] = this.unittype;
    data['databasic'] = this.databasic;
    data['Advisor'] = this.advisor;
    data['StateNow'] = this.stateNow;
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
