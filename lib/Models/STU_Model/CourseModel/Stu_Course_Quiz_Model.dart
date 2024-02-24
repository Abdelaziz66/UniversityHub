class STU_Quiz_Model {
  String? id;
  String? title;
  String? notes;
  String? startDate;
  String? endDate;
 // Null? grade;
  //Null? courseId;
  //Null? instructorId;
  String? createdAt;
  String? status;
  //Null? questions;

  STU_Quiz_Model(
      {this.id,
        this.title,
        this.notes,
        this.startDate,
        this.endDate,
       // this.grade,
     //   this.courseId,
      //  this.instructorId,
        this.createdAt,
        this.status,
    //    this.questions
      });

  STU_Quiz_Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    notes = json['notes'];
    startDate = json['startDate'];
    endDate = json['endDate'];
  //  grade = json['grade'];
  //  courseId = json['courseId'];
  //  instructorId = json['instructorId'];
    createdAt = json['createdAt'];
    status = json['status'];
 //   questions = json['questions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['notes'] = this.notes;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
 //   data['grade'] = this.grade;
 //   data['courseId'] = this.courseId;
 //   data['instructorId'] = this.instructorId;
    data['createdAt'] = this.createdAt;
    data['status'] = this.status;
//    data['questions'] = this.questions;
    return data;
  }
}