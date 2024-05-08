class Stu_GetAllCoursesModel {
  int? hiveIndex;
  String? cycleId;
  String? name;
  int? hours;
  String? imagePath;
  String? instructorFullName;

  Stu_GetAllCoursesModel(
      {
        this.hiveIndex,
        this.cycleId,
        this.name,
        this.hours,
        this.imagePath,
        this.instructorFullName});
  Stu_GetAllCoursesModel.fromJson(Map<String, dynamic> json) {
    cycleId = json['cycleId'];
    name = json['name'];
    hours = json['hours'];
    imagePath = json['imagePath'];
    instructorFullName = json['instructorFullName'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cycleId'] = this.cycleId;
    data['name'] = this.name;
    data['hours'] = this.hours;
    data['imagePath'] = this.imagePath;
    data['instructorFullName'] = this.instructorFullName;
    return data;
  }
}