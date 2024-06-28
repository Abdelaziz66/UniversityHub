import 'package:hive/hive.dart';

import 'Dashboard_stu_model.dart';

class StuDashboardQuizAdapter extends TypeAdapter<Quiz> {
  @override
  final int typeId = 8; // Unique identifier for this type adapter

  @override
  Quiz read(BinaryReader reader) {
    return Quiz(
      quizId:reader.readString(),
      title:reader.readString(),
      notes:reader.readString(),
      startDate:reader.read(),
      endDate:reader.readString(),
      grade:reader.readInt(),
      courseCycleId:reader.readString(),
      instructorId:reader.readString(),
      createdAt:reader.readString(),
      courseCycle:reader.readString(),
      instructor:reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Quiz obj) {
    writer.writeString(obj.quizId?? '');
    writer.writeString(obj.title?? '');
    writer.writeString(obj.notes ?? '');
    writer.writeString(obj.startDate ?? '');
    writer.writeString(obj.endDate ?? '');
    writer.writeInt(obj.grade?? 0);
    writer.writeString(obj.courseCycleId ?? '');
    writer.writeString(obj.instructorId ?? '');
    writer.writeString(obj.createdAt ?? '');
    writer.writeString(obj.courseCycle ?? '');
    writer.writeString(obj.instructor ?? '');
  }
}

//----------------------------------------------



class StuDashboardTaskAdapter extends TypeAdapter<Task> {
  @override
  final int typeId = 9; // Unique identifier for this type adapter

  @override
  Task read(BinaryReader reader) {
    return Task(
      taskId:reader.readString(),
      title:reader.readString(),
      filePath:reader.readString(),
      startDate:reader.read(),
      endDate:reader.readString(),
      grade:reader.readInt(),
      courseCycleId:reader.readString(),
      instructorId:reader.readString(),
      createdAt:reader.readString(),
      courseCycle:reader.readString(),
      instructor:reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer.writeString(obj.taskId?? '');
    writer.writeString(obj.title?? '');
    writer.writeString(obj.filePath ?? '');
    writer.writeString(obj.startDate ?? '');
    writer.writeString(obj.endDate ?? '');
    writer.writeInt(obj.grade?? 0);
    writer.writeString(obj.courseCycleId ?? '');
    writer.writeString(obj.instructorId ?? '');
    writer.writeString(obj.createdAt ?? '');
    writer.writeString(obj.courseCycle ?? '');
    writer.writeString(obj.instructor ?? '');
  }
}