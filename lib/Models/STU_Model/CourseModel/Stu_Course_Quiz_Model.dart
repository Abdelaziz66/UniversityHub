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



//------------------Quiz data by quiz id ----------
class GetQuizDataModel {
  String? id;
  String? title;
  Null? notes;
  String? startDate;
  String? endDate;
  int? grade;
  String? courseId;
  String? instructorId;
  String? createdAt;
  Null? status;
  List<Questions>? questions;

  GetQuizDataModel(
      {this.id,
        this.title,
        this.notes,
        this.startDate,
        this.endDate,
        this.grade,
        this.courseId,
        this.instructorId,
        this.createdAt,
        this.status,
        this.questions});

  GetQuizDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    notes = json['notes'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    grade = json['grade'];
    courseId = json['courseId'];
    instructorId = json['instructorId'];
    createdAt = json['createdAt'];
    status = json['status'];
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['notes'] = this.notes;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['grade'] = this.grade;
    data['courseId'] = this.courseId;
    data['instructorId'] = this.instructorId;
    data['createdAt'] = this.createdAt;
    data['status'] = this.status;
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  String? id;
  String? text;
  String? type;
  int? questionNumber;
  int? grade;
  String? createdAt;
  List<Answers>? answers;

  Questions(
      {this.id,
        this.text,
        this.type,
        this.questionNumber,
        this.grade,
        this.createdAt,
        this.answers});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    type = json['type'];
    questionNumber = json['questionNumber'];
    grade = json['grade'];
    createdAt = json['createdAt'];
    if (json['answers'] != null) {
      answers = <Answers>[];
      json['answers'].forEach((v) {
        answers!.add(new Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['type'] = this.type;
    data['questionNumber'] = this.questionNumber;
    data['grade'] = this.grade;
    data['createdAt'] = this.createdAt;
    if (this.answers != null) {
      data['answers'] = this.answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Answers {
  String? id;
  String? text;
  String? createdAt;

  Answers({this.id, this.text, this.createdAt});

  Answers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['createdAt'] = this.createdAt;
    return data;
  }
}