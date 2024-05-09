import 'package:hive_flutter/hive_flutter.dart';
import 'CurrentStudentInfoModel.dart';

class STU_InfoAdapter extends TypeAdapter<CurrentStudentInfoModel>{
  @override
  CurrentStudentInfoModel read(BinaryReader reader) {
    return CurrentStudentInfoModel(
        hiveIndex:reader.readInt(),
        userId:reader.readString(),
        fullName :reader.readString(),
        email :reader.readString(),
       phone :reader.readString(),
       imagePath :reader.readString(),
       academicId :reader.readString(),
       level:reader.readInt(),
       departmentName :reader.readString(),
      facultyName:reader.readString(),
      universityName :reader.readString(),
    );
  }
  @override
  int get typeId => 4;
  @override
  void write(BinaryWriter writer,CurrentStudentInfoModel obj) {
    writer.writeInt(obj.hiveIndex!);
    writer.writeString(obj.userId!);
    writer.writeString(obj.fullName!);
    writer.writeString(obj.email!);
    writer.writeString(obj.phone!);
    writer.writeString(obj.imagePath!);
    writer.writeString(obj.academicId!);
    writer.writeInt(obj.level!);
    writer.writeString(obj.departmentName!);
    writer.writeString(obj.facultyName!);
    writer.writeString(obj.universityName!);
  }
}