class GetAllNewsModel {
  String? newsId;
  String? content;
  String? filePath;
  String? facultyId;
  String? createdAt;
  String? userId;
  String?userName;

  GetAllNewsModel(
      this.newsId,
        this.content,
        this.filePath,
        this.facultyId,
        this.createdAt,
        this.userId,
        this.userName
      );

  GetAllNewsModel.fromJson(Map<String, dynamic> json) {
    newsId = json['newsId'];
    content = json['content'];
    filePath = json['filePath'];
    facultyId = json['facultyId'];
    createdAt = json['createdAt'];
    userId = json['userId'];
    userName=json['userName'];
  }

}