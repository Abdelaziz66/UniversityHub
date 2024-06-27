
class Dashboard_ins_model {
  String? type;
  String? name;
  String? instructorName;
  int? grade;
  DateTime? startDate;
  DateTime? endDate;
  int? studentSubmissionCount;

  Dashboard_ins_model({
    this.type,
    this.name,
    this.instructorName,
    this.grade,
    this.startDate,
    this.endDate,
    this.studentSubmissionCount,
  });

  factory Dashboard_ins_model.fromJson(Map<String, dynamic> json) => Dashboard_ins_model(
    type: json["type"],
    name: json["name"],
    instructorName:json["instructorName"],
    grade: json["grade"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    studentSubmissionCount: json["studentSubmissionCount"],
  );

  Map<String, dynamic> toJson() => {
    "type":type,
    "name": name,
    "instructorName":instructorName,
    "grade": grade,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "studentSubmissionCount": studentSubmissionCount,
  };
}

