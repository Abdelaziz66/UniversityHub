
class student_Model {
  String? studentId;
  String? studentName;

  student_Model({
    this.studentId,
    this.studentName,
  });

  factory student_Model.fromJson(Map<String, dynamic> json) => student_Model(
    studentId: json["studentId"],
    studentName: json["studentName"],
  );

  Map<String, dynamic> toJson() => {
    "studentId": studentId,
    "studentName": studentName,
  };
}
