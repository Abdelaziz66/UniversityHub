class InsAllLecFoldersModel {
  String? lectureId;
  String? lectureName;
  String? type;
  String? createdAt;

  InsAllLecFoldersModel(
      {this.lectureId, this.lectureName, this.type, this.createdAt});

  InsAllLecFoldersModel.fromJson(Map<String, dynamic> json) {
    lectureId = json['LectureId'];
    lectureName = json['LectureName'];
    type = json['Type'];
    createdAt = json['CreatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LectureId'] = this.lectureId;
    data['LectureName'] = this.lectureName;
    data['Type'] = this.type;
    data['CreatedAt'] = this.createdAt;
    return data;
  }
}


class InsLecFilesModel {
  int? lectureFileId;
  String? fileName;
  String? filePath;
  String? createdAt;

  InsLecFilesModel(
      {this.lectureFileId, this.fileName, this.filePath, this.createdAt});

  InsLecFilesModel.fromJson(Map<String, dynamic> json) {
    lectureFileId = json['lectureFileId'];
    fileName = json['fileName'];
    filePath = json['filePath'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lectureFileId'] = this.lectureFileId;
    data['fileName'] = this.fileName;
    data['filePath'] = this.filePath;
    data['createdAt'] = this.createdAt;
    return data;
  }
}





class InsUploadFilesModel {
  int? lectureFileId;
  String? lectureId;
  String? filePath;
  String? createdAt;
  String? name;
  Null? lecture;

  InsUploadFilesModel(
      {this.lectureFileId,
        this.lectureId,
        this.filePath,
        this.createdAt,
        this.name,
        this.lecture});

  InsUploadFilesModel.fromJson(Map<String, dynamic> json) {
    lectureFileId = json['lectureFileId'];
    lectureId = json['lectureId'];
    filePath = json['filePath'];
    createdAt = json['createdAt'];
    name = json['name'];
    lecture = json['lecture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lectureFileId'] = this.lectureFileId;
    data['lectureId'] = this.lectureId;
    data['filePath'] = this.filePath;
    data['createdAt'] = this.createdAt;
    data['name'] = this.name;
    data['lecture'] = this.lecture;
    return data;
  }
}