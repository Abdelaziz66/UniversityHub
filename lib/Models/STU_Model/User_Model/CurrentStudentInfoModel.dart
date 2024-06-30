class CurrentStudentInfoModel {
  int?hiveIndex;
  String? userId;
  String? fullName;
  String? email;
  String? phone;
  String? imagePath;
  String? academicId;
  int? level;
  String? departmentName;
  String? facultyName;
  String? universityName;

  CurrentStudentInfoModel(
      {
        this.hiveIndex,
        this.userId,
        this.fullName,
        this.email,
        this.phone,
        this.imagePath,
        this.academicId,
        this.level,
        this.departmentName,
        this.facultyName,
        this.universityName

      });

  CurrentStudentInfoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    fullName = json['fullName'];
    email = json['email'];
    phone = json['phone'];
    imagePath = json['imagePath']??'';
    academicId = json['academicId'];
    level = json['level'];
    departmentName = json['departmentName'];
    facultyName = json['facultyName'];
    universityName = json['universityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['imagePath'] = this.imagePath;
    data['academicId'] = this.academicId;
    data['level'] = this.level;
    data['departmentName'] = this.departmentName;
    data['facultyName'] = this.facultyName;
    data['universityName'] = this.universityName;
    return data;
  }
}