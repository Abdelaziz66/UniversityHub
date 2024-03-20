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