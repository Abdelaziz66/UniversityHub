// class STU_Login_Model{
//  // bool?status;
//  // String? message;
//   STU_UserData? data;
//   STU_Login_Model.fromJson(Map<String,dynamic> json){
//  //   status = json['status'];
//   //  message = json['message'];
//     data = json['data']!=null ? STU_UserData.fromJson(json['data']) :null;
//   }
// }
//
// class STU_UserData{
//  // int?id;
//   String?displayName;
//   String?email;
//   String?token;
//   String?userRole;
//   //int?pioints;
//  // int?credit;
// //  String?token;
//   STU_UserData.fromJson(Map<String,dynamic> json){
//     //id=json['id'];
//     displayName=json['displayName'];
//     email=json['email'];
//    // phone=json['phone'];
//    // image=json['image'];
//   //  pioints=json['pioints'];
//     token=json['token'];
//     userRole=json['userRole'];
//
//
//   }
//
// }


class STU_Login_Model {
  String? displayName;
  String? email;
  String? token;
  String? userRole;

  STU_Login_Model({this.displayName, this.email, this.token, this.userRole});

  STU_Login_Model.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    email = json['email'];
    token = json['token'];
    userRole = json['userRole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['email'] = this.email;
    data['token'] = this.token;
    data['userRole'] = this.userRole;
    return data;
  }
}