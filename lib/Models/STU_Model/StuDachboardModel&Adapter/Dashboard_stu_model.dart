
class Dashboard_stu_model {
  List<Quiz>? quizzes;
  List<Task>? tasks;

  Dashboard_stu_model({
    this.quizzes,
    this.tasks,
  });

  factory Dashboard_stu_model.fromJson(Map<String, dynamic> json) => Dashboard_stu_model(
    quizzes: json["quizzes"] == null ? [] : List<Quiz>.from(json["quizzes"]!.map((x) => Quiz.fromJson(x))),
    tasks: json["tasks"] == null ? [] : List<Task>.from(json["tasks"]!.map((x) => Task.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "quizzes": quizzes == null ? [] : List<dynamic>.from(quizzes!.map((x) => x.toJson())),
    "tasks": tasks == null ? [] : List<dynamic>.from(tasks!.map((x) => x.toJson())),
  };
}

class Quiz {
  int? hiveIndex;
  String? title;
  String? startDate;
  String? endDate;
  int? grade;
  String? createdAt;
  Quiz({
    this.hiveIndex,
    this.title,
    this.startDate,
    this.endDate,
    this.grade,
    this.createdAt,

  });

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
    title: json["title"],
    startDate: json["startDate"] == null ? null : json["startDate"],
    endDate: json["endDate"] == null ? null : json["endDate"],
    grade: json["grade"],

    createdAt: json["createdAt"],

  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "startDate": startDate,
    "endDate": endDate,
    "grade": grade,
    "createdAt": createdAt,
  };
}

class Task {
  int?hiveIndex;
  String? title;
  String? startDate;
  String? endDate;
  int? grade;
  String? createdAt;

  Task({
    this.hiveIndex,
    this.title,
    this.startDate,
    this.endDate,
    this.grade,
    this.createdAt,

  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    title: json["title"],
    startDate: json["startDate"] == null ? null : json["startDate"],
    endDate: json["endDate"] == null ? null : json["endDate"],
    grade: json["grade"],
    createdAt: json["createdAt"] == null ? null : json["createdAt"],

  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "startDate": startDate,
    "endDate": endDate,
    "grade": grade,
    "createdAt": createdAt,
  };
}