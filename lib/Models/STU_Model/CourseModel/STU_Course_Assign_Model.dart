class STU_Course_Assign_Model {
  // String? taskId;
  // String? taskName;
  // //int? taskGrade;
  // String? startDate;
  // String? endDate;
  // //String? status;
  // //String? courseName;
  // String? filePath;
  // //String? instructorName;
  // String? createdAt;
  //
  // STU_Course_Assign_Model(
  //     {this.taskId,
  //       this.taskName,
  //      // this.taskGrade,
  //       this.startDate,
  //       this.endDate,
  //     //  this.status,
  //     //  this.courseName,
  //       this.filePath,
  //    //   this.instructorName,
  //       this.createdAt});
  //
  // STU_Course_Assign_Model.fromJson(Map<String, dynamic> json) {
  //   taskId = json['taskId'];
  //   taskName = json['taskName'];
  //  // taskGrade = json['taskGrade'];
  //   startDate = json['startDate'];
  //   endDate = json['endDate'];
  //  // status = json['status'];
  //  // courseName = json['courseName'];
  //   filePath = json['filePath'];
  // //  instructorName = json['instructorName'];
  //   createdAt = json['createdAt'];
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['taskId'] = this.taskId;
  //   data['taskName'] = this.taskName;
  // //  data['taskGrade'] = this.taskGrade;
  //   data['startDate'] = this.startDate;
  //   data['endDate'] = this.endDate;
  // //  data['status'] = this.status;
  //  // data['courseName'] = this.courseName;
  //   data['filePath'] = this.filePath;
  // //  data['instructorName'] = this.instructorName;
  //   data['createdAt'] = this.createdAt;
  //   return data;
  // }
  String? taskId;
  String? taskName;
  int? taskGrade;
  String? startDate;
  String? endDate;
  String? status;
  String? courseName;
  String? filePath;
  String? instructorName;
  String? createdAt;

  STU_Course_Assign_Model(
      {this.taskId,
        this.taskName,
        this.taskGrade,
        this.startDate,
        this.endDate,
        this.status,
        this.courseName,
        this.filePath,
        this.instructorName,
        this.createdAt});

  STU_Course_Assign_Model.fromJson(Map<String, dynamic> json) {
    taskId = json['taskId'];
    taskName = json['taskName'];
    taskGrade = json['taskGrade'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    status = json['status'];
    courseName = json['courseName'];
    filePath = json['filePath'];
    instructorName = json['instructorName'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taskId'] = this.taskId;
    data['taskName'] = this.taskName;
    data['taskGrade'] = this.taskGrade;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['status'] = this.status;
    data['courseName'] = this.courseName;
    data['filePath'] = this.filePath;
    data['instructorName'] = this.instructorName;
    data['createdAt'] = this.createdAt;
    return data;
  }
}