//
// class News_D_model {
//   String? newsId;
//   String? content;
//   String? filePath;
//   String? facultyId;
//   String? userId;
//   DateTime? createdAt;
//   dynamic faculty;
//   dynamic user;
//
//   News_D_model({
//     this.newsId,
//     this.content,
//     this.filePath,
//     this.facultyId,
//     this.userId,
//     this.createdAt,
//     this.faculty,
//     this.user,
//   });
//
//   factory News_D_model.fromJson(Map<String, dynamic> json) => News_D_model(
//     newsId: json["newsId"],
//     content: json["content"],
//     filePath: json["filePath"],
//     facultyId: json["facultyId"],
//     userId: json["userId"],
//     createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
//     faculty: json["faculty"],
//     user: json["user"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "newsId": newsId,
//     "content": content,
//     "filePath": filePath,
//     "facultyId": facultyId,
//     "userId": userId,
//     "createdAt": createdAt?.toIso8601String(),
//     "faculty": faculty,
//     "user": user,
//   };
// }
