class GetAllNewsModel {
  String? newsId;
  String? content;
  String? filePath;
  String? facultyId;
  String? createdAt;
  String? userId;

  GetAllNewsModel(
      {this.newsId,
        this.content,
        this.filePath,
        this.facultyId,
        this.createdAt,
        this.userId});

  GetAllNewsModel.fromJson(Map<String, dynamic> json) {
    newsId = json['newsId'];
    content = json['content'];
    filePath = json['filePath'];
    facultyId = json['facultyId'];
    createdAt = json['createdAt'];
    userId = json['userId'];
  }

}