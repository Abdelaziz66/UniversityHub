import 'package:hive_flutter/hive_flutter.dart';
import 'Stu_All_Courses_Model.dart';

class Stu_GetAllCoursesAdapter extends TypeAdapter<Stu_GetAllCoursesModel>{
  @override
  Stu_GetAllCoursesModel read(BinaryReader reader) {
    return Stu_GetAllCoursesModel(
        hiveIndex:reader.readInt(),
      cycleId: reader.readString(),
      name: reader.readString(),
      hours: reader.readInt(),
      imagePath: reader.readString(),
      instructorFullName: reader.readString(),
    );
  }
  @override
  int get typeId => 0;
  @override
  void write(BinaryWriter writer,Stu_GetAllCoursesModel obj) {
    writer.writeInt(obj.hiveIndex!);
    writer.writeString(obj.cycleId!);
    writer.writeString(obj.name!);
    writer.writeInt(obj.hours!);
    writer.writeString(obj.imagePath!);
    writer.writeString(obj.instructorFullName!);
  }
}