import 'package:hive/hive.dart';

import 'Stu_Course_MaterialModel.dart';

class materialFolderAdapter extends TypeAdapter<GetCourseMaterialsModel>{
  @override
  GetCourseMaterialsModel read(BinaryReader reader) {
      return GetCourseMaterialsModel(
         hiveIndex: reader.readInt(),
          lectureId: reader.readString(),
         lectureName: reader.readString(),
         semesterName: reader.readString(),
          type: reader.readString(),
          createdAt: reader.readString(),
          path: reader.readString(),

      );
  }
  @override
  int get typeId => 1;
  @override
  void write(BinaryWriter writer, GetCourseMaterialsModel obj) {
    writer.writeInt(obj.hiveIndex!);
    writer.writeString(obj.lectureId!);
    writer.writeString(obj.lectureName!);
    writer.writeString(obj.semesterName!);
    writer.writeString(obj.type!);
    writer.writeString(obj.createdAt!);
    writer.writeString(obj.path!);

  }
}