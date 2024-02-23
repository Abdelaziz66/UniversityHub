class GetCourseMaterialsModel {
  String? fileName;
  String? lectureName;
  String? semesterName;
  String? filePath;

  GetCourseMaterialsModel(
      {this.fileName, this.lectureName, this.semesterName, this.filePath});

  GetCourseMaterialsModel.fromJson(Map<String, dynamic> json) {
    fileName = json['fileName'];
    lectureName = json['lectureName'];
    semesterName = json['semesterName'];
    filePath = json['filePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fileName'] = this.fileName;
    data['lectureName'] = this.lectureName;
    data['semesterName'] = this.semesterName;
    data['filePath'] = this.filePath;
    return data;
  }
}