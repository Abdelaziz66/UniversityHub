
import 'dart:convert';


class currentinfo_ins_model {
  String? fullName;
  String? email;
  String? phone;
  String? imagePath;
  String? facultyName;
  String? universityName;

  currentinfo_ins_model({
    this.fullName,
    this.email,
    this.phone,
    this.imagePath,
    this.facultyName,
    this.universityName,
  });

  factory currentinfo_ins_model.fromJson(Map<String, dynamic> json) => currentinfo_ins_model(
    fullName: json["fullName"],
    email: json["email"],
    phone: json["phone"],
    imagePath: json["imagePath"],
    facultyName: json["facultyName"],
    universityName: json["universityName"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "email": email,
    "phone": phone,
    "imagePath": imagePath,
    "facultyName": facultyName,
    "universityName": universityName,
  };
}
