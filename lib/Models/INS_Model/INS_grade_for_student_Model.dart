
class GradeforStudent_model {
  String? id;
  String? title;
  dynamic grade;
  DateTime? date;

  GradeforStudent_model({
    this.id,
    this.title,
    this.grade,
    this.date,
  });

  factory GradeforStudent_model.fromJson(Map<String, dynamic> json) => GradeforStudent_model(
    id: json["id"],
    title: json["title"],
    grade: json["grade"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "grade": grade,
    "date": date?.toIso8601String(),
  };
}
