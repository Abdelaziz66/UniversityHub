import 'package:hive_flutter/hive_flutter.dart';
import 'AllNewsModel.dart';

class Stu_GetAllNewsAdapter extends TypeAdapter<GetAllNewsModel>{
  @override
  GetAllNewsModel read(BinaryReader reader) {
    return GetAllNewsModel(
        hiveIndex:reader.readInt(),
        newsId : reader.readString(),
        content : reader.readString(),
        filePath : reader.readString(),
        facultyId : reader.readString(),
        createdAt : reader.readString(),
        userId : reader.readString(),
        userName: reader.readString(),
        userImage: reader.readString(),
        facultyName: reader.readString(),
    );
  }
  @override
  int get typeId => 3;
  @override
  void write(BinaryWriter writer,GetAllNewsModel obj) {
    writer.writeInt(obj.hiveIndex!);
    writer.writeString(obj.newsId!);
    writer.writeString(obj.content!);
    writer.writeString(obj.filePath!);
    writer.writeString(obj.facultyId!);
    writer.writeString(obj.createdAt!);
    writer.writeString(obj.userId!);
    writer.writeString(obj.userName!);
    writer.writeString(obj.userImage!);
    writer.writeString(obj.facultyName!);
  }
}