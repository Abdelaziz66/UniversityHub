class GetAllNewsModel {
  int? hiveIndex;
  String? newsId;
  String? content;
  String? filePath;
  String? facultyId;
  String? createdAt;
  String? userId;
  String?userName;
  String?userImage;
  String?facultyName;

  GetAllNewsModel({
      this.hiveIndex,
      this.newsId,
      this.content,
      this.filePath,
      this.facultyId,
      this.createdAt,
      this.userId,
      this.userName,
      this.userImage,
      this.facultyName,

  }
      );

  GetAllNewsModel.fromJson(Map<String, dynamic> json) {
    newsId = json['newsId'];
    content = json['content'];
    filePath = json['filePath'];
    facultyId = json['facultyId'];
    createdAt = json['createdAt'];
    userId = json['userId'];
    userName=json['userName']??json['user'];
    userImage=json['userImage'];
    facultyName=json['facultyName'];
  }

}