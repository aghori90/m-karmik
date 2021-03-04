class profileResponse {
  String pINNO = 'N/A';
  String name= 'N/A';
  String desig= 'N/A';
  String dob= 'N/A';
  String sex= 'N/A';
  String address= 'N/A';
  String empId= 'N/A';
  String mobile= 'N/A';
  String oFFNAME= 'N/A';

  profileResponse(
      {this.pINNO,
        this.name,
        this.desig,
        this.dob,
        this.sex,
        this.address,
        this.empId,
        this.mobile,
        this.oFFNAME});

  profileResponse.fromJson(Map<String, dynamic> json) {
    pINNO = json['PIN_NO'];
    name = json['name'];
    desig = json['desig'];
    dob = json['dob'];
    sex = json['sex'];
    address = json['address'];
    empId = json['emp_id'];
    mobile = json['mobile'];
    oFFNAME = json['OFF_NAME'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PIN_NO'] = this.pINNO;
    data['name'] = this.name;
    data['desig'] = this.desig;
    data['dob'] = this.dob;
    data['sex'] = this.sex;
    data['address'] = this.address;
    data['emp_id'] = this.empId;
    data['mobile'] = this.mobile;
    data['OFF_NAME'] = this.oFFNAME;
    return data;
  }
}