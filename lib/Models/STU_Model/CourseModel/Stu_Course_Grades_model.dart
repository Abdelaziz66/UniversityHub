class GetCourseGradesModel {
  String? title;
  int? grade;
  String? date;

  GetCourseGradesModel({this.title, this.grade, this.date});

  GetCourseGradesModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    grade = json['grade'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['grade'] = this.grade;
    data['date'] = this.date;
    return data;
  }
}