class GetCourseMaterialsModel {
  String? fileName;
  String? lectureId;
  String? lectureName;
  String? semesterName;
  String? filePath;
  String? type;

  GetCourseMaterialsModel(
      {this.fileName, this.lectureName, this.semesterName, this.filePath,this.type,this.lectureId});

  GetCourseMaterialsModel.fromJson(Map<String, dynamic> json) {
    fileName = json['fileName'];
    lectureId=json['lectureId'];
    lectureName = json['lectureName'];
    semesterName = json['semesterName'];
    filePath = json['filePath'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fileName'] = this.fileName;
    data['lectureId']=this.lectureId;
    data['lectureName'] = this.lectureName;
    data['semesterName'] = this.semesterName;
    data['filePath'] = this.filePath;
    data['type'] = this.type;
    return data;
  }
}


class GetCourseMaterialFileModel {
  String? fileName;
  String? filePath;
  String? createdAt;

  GetCourseMaterialFileModel({this.fileName, this.filePath, this.createdAt});

  GetCourseMaterialFileModel.fromJson(Map<String, dynamic> json) {
    fileName = json['fileName'];
    filePath = json['filePath'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fileName'] = this.fileName;
    data['filePath'] = this.filePath;
    data['createdAt'] = this.createdAt;
    return data;
  }
}