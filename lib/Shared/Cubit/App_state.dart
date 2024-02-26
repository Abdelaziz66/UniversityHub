import 'package:university_hup/Models/All_News/AllNewsModel.dart';

import '../../Models/STU_Model/User_Model/STU_Login_Model.dart';

abstract class App_state {}

class App_ini_state extends App_state{}

// Abdelaziz  --------------------------------------------------------------------

class Nav_Bar_state extends App_state{}

class D_E_state extends App_state{}

class Defulte_state extends App_state{}


class Switch_stud_ins_state extends App_state{}

class Switch_stud_ins_bool_state extends App_state{}

class Nav_HomeBar_state extends App_state{}

class stateforDrawer extends App_state{}



// alfy  --------------------------------------------------------------------
//instructor cources state :
class ChangeBottomSheet_State extends App_state{}
class ChangeListVisible_State extends App_state{}

class AddFile_Loading_State extends App_state{}
class AddFile_Success_State extends App_state{}
class AddFile_Error_State extends App_state{}

class AddNewFile_Loading_State extends App_state{}
class AddNewFile_Success_State extends App_state{}
class AddNewFile_Error_State extends App_state{}

class ShowFile_Loading_State extends App_state{}
class ShowFile_Success_State extends App_state{}
class ShowFile_Error_State extends App_state{}

class select_item_add_quiz_State extends App_state{}


class pend_complete_state extends App_state{}

//-----------------------Assignment Files----------

class AddFile_Assign_Loading_State extends App_state{}
class AddFile_Assign_Success_State extends App_state{}
class AddFile_Assign_Error_State extends App_state{}

class AddNewFile_Assign_Loading_State extends App_state{}
class AddNewFile_Assign_Success_State extends App_state{}
class AddNewFile_Assign_Error_State extends App_state{}

//-----------------STU_Quiz_states-------------
class Change_Quiz_Answer_State extends App_state{}

//-----------------------API---------------------
//Login:
class STU_LoginInitialState extends App_state {}

class STU_LoginLoadingState extends App_state {}

class STU_LoginSuccessState extends App_state {
  final STU_Login_Model loginmodel;

  STU_LoginSuccessState(this.loginmodel);

}

class STU_LoginErrorState extends App_state {
  String? error;
  STU_LoginErrorState(this.error);
}
//---------get all news--------------

class Get_All_NewsLoadingState extends App_state {}

class Get_All_NewsSuccessState extends App_state {
  List<GetAllNewsModel> newsmodel=[];


  Get_All_NewsSuccessState(this.newsmodel);

}

class Get_All_NewsErrorState extends App_state {
  String? error;
  Get_All_NewsErrorState(this.error);
}