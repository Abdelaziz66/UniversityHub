
class GetQuizes_Model {
  String? id;
  String? title;
  DateTime? startDate;
  DateTime? endDate;
  String? status;

  GetQuizes_Model({
    this.id,
    this.title,
    this.startDate,
    this.endDate,
    this.status,
  });

  factory GetQuizes_Model.fromJson(Map<String, dynamic> json) => GetQuizes_Model(
    id: json["id"],
    title: json["title"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "status": status,
  };
}