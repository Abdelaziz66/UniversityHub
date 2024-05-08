import 'package:hive/hive.dart';

import 'Stu_Course_MaterialModel.dart';

class materialFilesAdapter extends TypeAdapter<GetCourseMaterialFileModel>{
  @override
  GetCourseMaterialFileModel read(BinaryReader reader) {
    return GetCourseMaterialFileModel(
      hiveIndex:reader.readInt(),
      LectureFileId: reader.readInt(),
      fileName: reader.readString(),
      filePath: reader.readString(),
      createdAt: reader.readString(),


    );
  }
  @override
  int get typeId => 2;
  @override
  void write(BinaryWriter writer, GetCourseMaterialFileModel obj) {
    writer.writeInt(obj.hiveIndex!);
    writer.writeInt(obj.LectureFileId!);
    writer.writeString(obj.fileName!);
    writer.writeString(obj.filePath!);
    writer.writeString(obj.createdAt!);


  }
}