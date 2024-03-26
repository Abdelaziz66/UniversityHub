class INS_Course_Model {
  String? cycleId;
  String? name;
  int? hours;
  String? imagePath;

  INS_Course_Model({
    this.cycleId,
    this.name,
    this.hours,
    this.imagePath,
  });

  factory INS_Course_Model.fromJson(Map<String, dynamic> json) => INS_Course_Model(
    cycleId: json["cycleId"],
    name: json["name"],
    hours: json["hours"],
    imagePath: json["imagePath"],
  );

  Map<String, dynamic> toJson() => {
    "cycleId": cycleId,
    "name": name,
    "hours": hours,
    "imagePath": imagePath,
  };
}
