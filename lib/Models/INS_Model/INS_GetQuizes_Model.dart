class GetQuizes_Model {
  String? id;
  String? title;
  DateTime? startDate;
  DateTime? endDate;
  String? status;
  int? numberOfAllStudents;
  int? numberOfStudentsSolve;

  GetQuizes_Model({
    this.id,
    this.title,
    this.startDate,
    this.endDate,
    this.status,
    this.numberOfAllStudents,
    this.numberOfStudentsSolve,
  });

  factory GetQuizes_Model.fromJson(Map<String, dynamic> json) => GetQuizes_Model(
    id: json["id"],
    title: json["title"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    status:json["status"]!,
    numberOfAllStudents: json["numberOfAllStudents"],
    numberOfStudentsSolve: json["numberOfStudentsSolve"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "status": status,
    "numberOfAllStudents": numberOfAllStudents,
    "numberOfStudentsSolve": numberOfStudentsSolve,
  };
}



