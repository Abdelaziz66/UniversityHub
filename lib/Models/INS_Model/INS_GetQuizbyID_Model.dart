
class GetQuizebyID_Model {
  String? id;
  String? title;
  String? notes;
  String? duration;
  DateTime? startDate;
  DateTime? endDate;
  int? grade;
  String? courseId;
  String? instructorId;
  DateTime? createdAt;
  String? status;
  List<Question>? questions;

  GetQuizebyID_Model({
    this.id,
    this.title,
    this.notes,
    this.duration,
    this.startDate,
    this.endDate,
    this.grade,
    this.courseId,
    this.instructorId,
    this.createdAt,
    this.status,
    this.questions,
  });

  factory GetQuizebyID_Model.fromJson(Map<String, dynamic> json) => GetQuizebyID_Model(
    id: json["id"],
    title: json["title"],
    notes: json["notes"],
    duration: json["duration"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    grade: json["grade"],
    courseId: json["courseId"],
    instructorId: json["instructorId"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    status: json["status"],
    questions: json["questions"] == null ? [] : List<Question>.from(json["questions"]!.map((x) => Question.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "notes": notes,
    "duration": duration,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "grade": grade,
    "courseId": courseId,
    "instructorId": instructorId,
    "createdAt": createdAt?.toIso8601String(),
    "status": status,
    "questions": questions == null ? [] : List<dynamic>.from(questions!.map((x) => x.toJson())),
  };
}

class Question {
  String? id;
  String? text;
  String? type;
  int? questionNumber;
  int? grade;
  DateTime? createdAt;
  List<Answer>? answers;

  Question({
    this.id,
    this.text,
    this.type,
    this.questionNumber,
    this.grade,
    this.createdAt,
    this.answers,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    id: json["id"],
    text: json["text"],
    type: json["type"],
    questionNumber: json["questionNumber"],
    grade: json["grade"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    answers: json["answers"] == null ? [] : List<Answer>.from(json["answers"]!.map((x) => Answer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": text,
    "type": type,
    "questionNumber": questionNumber,
    "grade": grade,
    "createdAt": createdAt?.toIso8601String(),
    "answers": answers == null ? [] : List<dynamic>.from(answers!.map((x) => x.toJson())),
  };
}

class Answer {
  String? id;
  String? text;
  bool? isCorrect;
  int? answerNumber;
  String? createdAt;

  Answer({
    this.id,
    this.text,
    this.isCorrect,
    this.answerNumber,
    this.createdAt,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    id: json["id"],
    text: json["text"],
    isCorrect: json["isCorrect"],
    answerNumber: json["answerNumber"],
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": text,
    "isCorrect": isCorrect,
    "answerNumber": answerNumber,
    "createdAt": createdAt,
  };
}
