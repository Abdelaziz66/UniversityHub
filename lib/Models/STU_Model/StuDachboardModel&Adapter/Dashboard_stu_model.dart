
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
  String? quizId;
  String? title;
  String? notes;
  String? startDate;
  String? endDate;
  int? grade;
  String? courseCycleId;
  String? instructorId;
  String? createdAt;
  String? courseCycle;
  String? instructor;
  List<dynamic>? questions;
  List<dynamic>? studentQuizGrades;

  Quiz({
    this.hiveIndex,
    this.quizId,
    this.title,
    this.notes,
    this.startDate,
    this.endDate,
    this.grade,
    this.courseCycleId,
    this.instructorId,
    this.createdAt,
    this.courseCycle,
    this.instructor,
    this.questions,
    this.studentQuizGrades,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
    quizId: json["quizId"],
    title: json["title"],
    notes: json["notes"],
    startDate: json["startDate"] == null ? null : json["startDate"],
    endDate: json["endDate"] == null ? null : json["endDate"],
    grade: json["grade"],
    courseCycleId: json["courseCycleId"],
    instructorId: json["instructorId"],
    createdAt: json["createdAt"] == null ? null : json["createdAt"],
    courseCycle: json["courseCycle"],
    instructor: json["instructor"],
    questions: json["questions"] == null ? [] : List<dynamic>.from(json["questions"]!.map((x) => x)),
    studentQuizGrades: json["studentQuizGrades"] == null ? [] : List<dynamic>.from(json["studentQuizGrades"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "quizId": quizId,
    "title": title,
    "notes": notes,
    "startDate": startDate,
    "endDate": endDate,
    "grade": grade,
    "courseCycleId": courseCycleId,
    "instructorId": instructorId,
    "createdAt": createdAt,
    "courseCycle": courseCycle,
    "instructor": instructor,
    "questions": questions == null ? [] : List<dynamic>.from(questions!.map((x) => x)),
    "studentQuizGrades": studentQuizGrades == null ? [] : List<dynamic>.from(studentQuizGrades!.map((x) => x)),
  };
}

class Task {
  int?hiveIndex;
  String? taskId;
  String? title;
  String? startDate;
  String? endDate;
  int? grade;
  String? filePath;
  String? courseCycleId;
  String? instructorId;
  String? createdAt;
  String? courseCycle;
  String? instructor;
  List<dynamic>? taskAnswers;

  Task({
    this.hiveIndex,
    this.taskId,
    this.title,
    this.startDate,
    this.endDate,
    this.grade,
    this.filePath,
    this.courseCycleId,
    this.instructorId,
    this.createdAt,
    this.courseCycle,
    this.instructor,
    this.taskAnswers,
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    taskId: json["taskId"],
    title: json["title"],
    startDate: json["startDate"] == null ? null : json["startDate"],
    endDate: json["endDate"] == null ? null : json["endDate"],
    grade: json["grade"],
    filePath: json["filePath"],
    courseCycleId: json["courseCycleId"],
    instructorId: json["instructorId"],
    createdAt: json["createdAt"] == null ? null : json["createdAt"],
    courseCycle: json["courseCycle"],
    instructor: json["instructor"],
    taskAnswers: json["taskAnswers"] == null ? [] : List<dynamic>.from(json["taskAnswers"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "title": title,
    "startDate": startDate,
    "endDate": endDate,
    "grade": grade,
    "filePath": filePath,
    "courseCycleId": courseCycleId,
    "instructorId": instructorId,
    "createdAt": createdAt,
    "courseCycle": courseCycle,
    "instructor": instructor,
    "taskAnswers": taskAnswers == null ? [] : List<dynamic>.from(taskAnswers!.map((x) => x)),
  };
}
