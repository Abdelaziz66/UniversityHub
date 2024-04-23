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
  int ? LectureFileId;
  String? fileName;
  String? filePath;
  String? createdAt;

  GetCourseMaterialFileModel({this.fileName, this.filePath, this.createdAt,this.LectureFileId});

  GetCourseMaterialFileModel.fromJson(Map<String, dynamic> json) {
    fileName = json['fileName'];
    filePath = json['FilePath'];
    createdAt = json['CreatedAt'];
    LectureFileId=json['LectureFileId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fileName'] = this.fileName;
    data['FilePath'] = this.filePath;
    data['CreatedAt'] = this.createdAt;
    data['LectureFileId']=LectureFileId;
    return data;
  }
}