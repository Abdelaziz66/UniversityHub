
class Createquiz_model {
  String? title;
  String? notes;
  DateTime? startDate;
  DateTime? endDate;
  int? grade;
  String? courseCycleId;
  List<QuestionINS>? questions;

  Createquiz_model({
    this.title,
    this.notes,
    this.startDate,
    this.endDate,
    this.grade,
    this.courseCycleId,
    this.questions,
  });

  factory Createquiz_model.fromJson(Map<String, dynamic> json) => Createquiz_model(
    title: json["title"],
    notes: json["notes"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    grade: json["grade"],
    courseCycleId: json["courseCycleId"],
    questions: json["questions"] == null ? [] : List<QuestionINS>.from(json["questions"]!.map((x) => QuestionINS.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "notes": notes,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "grade": grade,
    "courseCycleId": courseCycleId,
    "questions": questions == null ? [] : List<dynamic>.from(questions!.map((x) => x.toJson())),
  };
}

class QuestionINS {
  String? text;
  String? type;
  int? questionNumber;
  int? grade;
  List<Answer>? answers;

  QuestionINS({
    this.text,
    this.type,
    this.questionNumber,
    this.grade,
    this.answers,
  });

  factory QuestionINS.fromJson(Map<String, dynamic> json) => QuestionINS(
    text: json["text"],
    type: json["type"],
    questionNumber: json["questionNumber"],
    grade: json["grade"],
    answers: json["answers"] == null ? [] : List<Answer>.from(json["answers"]!.map((x) => Answer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "type": type,
    "questionNumber": questionNumber,
    "grade": grade,
    "answers": answers == null ? [] : List<dynamic>.from(answers!.map((x) => x.toJson())),
  };
}

class Answer {
  String? text;
  bool? isCorrect;
  int? answerNumber;

  Answer({
    this.text,
    this.isCorrect,
    this.answerNumber,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    text: json["text"],
    isCorrect: json["isCorrect"],
    answerNumber: json["answerNumber"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "isCorrect": isCorrect,
    "answerNumber": answerNumber,
  };
}
