class InsStudentUplodeTaskModel {
  String? studentId;
  String? studentName;
  String? filePath;
  String? timeUploaded;

  InsStudentUplodeTaskModel(
      {this.studentId, this.studentName, this.filePath, this.timeUploaded});

  InsStudentUplodeTaskModel.fromJson(Map<String, dynamic> json) {
    studentId = json['studentId'];
    studentName = json['studentName'];
    filePath = json['filePath'];
    timeUploaded = json['timeUploaded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['studentId'] = this.studentId;
    data['studentName'] = this.studentName;
    data['filePath'] = this.filePath;
    data['timeUploaded'] = this.timeUploaded;
    return data;
  }
}