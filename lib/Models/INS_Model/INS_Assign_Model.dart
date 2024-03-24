// class InsGetAllAssignModel {
//   String? taskId;
//   String? taskName;
//   String? startDate;
//   String? endDate;
//   String? filePath;
//
//   InsGetAllAssignModel(
//       {this.taskId,
//         this.taskName,
//         this.startDate,
//         this.endDate,
//         this.filePath});
//
//   InsGetAllAssignModel.fromJson(Map<String, dynamic> json) {
//     taskId = json['TaskId'];
//     taskName = json['TaskName'];
//     startDate = json['StartDate'];
//     endDate = json['EndDate'];
//     filePath = json['FilePath'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['TaskId'] = this.taskId;
//     data['TaskName'] = this.taskName;
//     data['StartDate'] = this.startDate;
//     data['EndDate'] = this.endDate;
//     data['FilePath'] = this.filePath;
//     return data;
//   }
// }