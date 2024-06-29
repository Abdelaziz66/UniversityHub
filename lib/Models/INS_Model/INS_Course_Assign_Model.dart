class INS_Course_Assign_Model {

  String? taskId;
  String? taskName;
  String? filePath;
  DateTime? startDate;
  DateTime? endDate;
  int? numberOfAllStudents;
  int? numberOfStudentsUploads;

  INS_Course_Assign_Model({
    this.taskId,
    this.taskName,
    this.filePath,
    this.startDate,
    this.endDate,
    this.numberOfAllStudents,
    this.numberOfStudentsUploads,
  });

  factory INS_Course_Assign_Model.fromJson(Map<String, dynamic> json) => INS_Course_Assign_Model(
    taskId: json["taskId"],
    taskName: json["taskName"],
    filePath: json["filePath"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    numberOfAllStudents: json["numberOfAllStudents"],
    numberOfStudentsUploads: json["numberOfStudentsUploads"],
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "taskName": taskName,
    "filePath": filePath,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "numberOfAllStudents": numberOfAllStudents,
    "numberOfStudentsUploads": numberOfStudentsUploads,
  };
}

