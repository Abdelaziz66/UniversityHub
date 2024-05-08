class GetCourseMaterialsModel {
  int? hiveIndex;
  String? lectureId;
  String? lectureName;
  String? semesterName;
  String? type;
  String? createdAt;
  String? path;



  GetCourseMaterialsModel(
      {
        this.hiveIndex,
        this.lectureId,
        this.lectureName,
        this.semesterName,
        this.type,
        this.createdAt,
        this.path,
      });

  GetCourseMaterialsModel.fromJson(Map<String, dynamic> json) {
    lectureId=json['lectureId'];
    lectureName = json['lectureName'];
    semesterName = json['semesterName'];
    type = json['type'];
    createdAt = json['createdAt'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lectureId']=this.lectureId;
    data['lectureName'] = this.lectureName;
    data['semesterName'] = this.semesterName;
    data['type'] = this.type;
    data['createdAt'] = this.createdAt;
    data['path'] = this.path;
    return data;
  }
}


class GetCourseMaterialFileModel {
  int? hiveIndex;
  int ? LectureFileId;
  String? fileName;
  String? filePath;
  String? createdAt;

  GetCourseMaterialFileModel({
    this.hiveIndex,
    this.fileName,
    this.filePath,
    this.createdAt,
    this.LectureFileId});

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