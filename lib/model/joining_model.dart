class JoiningResponseModel {
  String pINNO;
  String officerName;
  String officeName;
  String dutyType;
  String dutyLocation;
  String dutyAddress;
  String dateFrom;
  String dateTo;
  String shift;
  String adminOffice;

  JoiningResponseModel(
      {this.pINNO,
        this.officerName,
        this.officeName,
        this.dutyType,
        this.dutyLocation,
        this.dutyAddress,
        this.dateFrom,
        this.dateTo,
        this.shift,
        this.adminOffice});

  JoiningResponseModel.fromJson(Map<String, dynamic> json) {
    pINNO = json['PIN_NO'];
    officerName = json['officer_name'];
    officeName = json['office_name'];
    dutyType = json['duty_type'];
    dutyLocation = json['duty_location'];
    dutyAddress = json['duty_address'];
    dateFrom = json['date_from'];
    dateTo = json['date_to'];
    shift = json['shift'];
    adminOffice = json['admin_office'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PIN_NO'] = this.pINNO;
    data['officer_name'] = this.officerName;
    data['office_name'] = this.officeName;
    data['duty_type'] = this.dutyType;
    data['duty_location'] = this.dutyLocation;
    data['duty_address'] = this.dutyAddress;
    data['date_from'] = this.dateFrom;
    data['date_to'] = this.dateTo;
    data['shift'] = this.shift;
    data['admin_office'] = this.adminOffice;
    return data;
  }
}