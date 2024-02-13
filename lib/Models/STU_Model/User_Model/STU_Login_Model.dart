class STU_Login_Model{
 // bool?status;
 // String? message;
  STU_UserData? data;
  STU_Login_Model.fromJson(Map<String,dynamic> json){
 //   status = json['status'];
  //  message = json['message'];
    data = json['data']!=null ? STU_UserData.fromJson(json['data']) :null;
  }
}

class STU_UserData{
 // int?id;
  String?displayName;
  String?email;
  String?token;
  String?userRole;
  //int?pioints;
 // int?credit;
//  String?token;
  STU_UserData.fromJson(Map<String,dynamic> json){
    //id=json['id'];
    displayName=json['displayName'];
    email=json['email'];
   // phone=json['phone'];
   // image=json['image'];
  //  pioints=json['pioints'];
    token=json['token'];
    userRole=json['userRole'];


  }

}
