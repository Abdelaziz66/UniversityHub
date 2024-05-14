import 'package:hive/hive.dart';

import 'Stu_Course_Quiz_Model.dart';

class GetQuizDataModelAdapter extends TypeAdapter<GetQuizDataModel> {
  @override
  final int typeId = 6; // Unique identifier for this type adapter

  @override
  GetQuizDataModel read(BinaryReader reader) {
    return GetQuizDataModel(
      id: reader.readString(),
      title: reader.readString(),
      //notes: reader.readNull(),
      startDate: reader.readString(),
      endDate: reader.readString(),
      grade: reader.readInt(),
      courseId: reader.readString(),
      instructorId: reader.readString(),
      createdAt: reader.readString(),
      //status: reader.readNull(),
      questions:null// List<Questions>.from(reader.readIterable(
            //() => QuestionsAdapter().read(reader),
      // )),
    );
  }

  @override
  void write(BinaryWriter writer, GetQuizDataModel obj) {
    writer.writeString(obj.id ?? '');
    writer.writeString(obj.title ?? '');
    //writer.writeNull(obj.notes);
    writer.writeString(obj.startDate ?? '');
    writer.writeString(obj.endDate ?? '');
    writer.writeInt(obj.grade ?? 0);
    writer.writeString(obj.courseId ?? '');
    writer.writeString(obj.instructorId ?? '');
    writer.writeString(obj.createdAt ?? '');
    //writer.writeNull(obj.status);
    //writer.writeIterable(obj.questions ?? [], (value) => QuestionsAdapter().write(writer, value));
  }
}