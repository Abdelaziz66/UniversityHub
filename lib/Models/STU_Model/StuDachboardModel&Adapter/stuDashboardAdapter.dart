import 'package:hive/hive.dart';

import 'Dashboard_stu_model.dart';

class StuDashboardQuizAdapter extends TypeAdapter<Quiz> {
  @override
  final int typeId = 8; //
  @override
  Quiz read(BinaryReader reader) {
    return Quiz(
      title:reader.readString(),
      startDate:reader.readString(),
      endDate:reader.readString(),
      grade:reader.readInt(),
      createdAt:reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Quiz obj) {
    writer.writeString(obj.title?? '');
    writer.writeString(obj.startDate ?? '');
    writer.writeString(obj.endDate ?? '');
    writer.writeInt(obj.grade?? 0);

    writer.writeString(obj.createdAt ?? '');

  }
}

//----------------------------------------------



class StuDashboardTaskAdapter extends TypeAdapter<Task> {
  @override
  final int typeId = 9; // Unique identifier for this type adapter

  @override
  Task read(BinaryReader reader) {
    return Task(
      title:reader.readString(),
      startDate:reader.readString(),
      endDate:reader.readString(),
      grade:reader.readInt(),
      createdAt:reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer.writeString(obj.title?? '');
    writer.writeString(obj.startDate ?? '');
    writer.writeString(obj.endDate ?? '');
    writer.writeInt(obj.grade?? 0);
    writer.writeString(obj.createdAt ?? '');

  }
}