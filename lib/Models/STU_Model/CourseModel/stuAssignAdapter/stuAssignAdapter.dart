import 'package:hive/hive.dart';

import 'STU_Course_Assign_Model.dart';

class StuTaskDataAdapter extends TypeAdapter<GetTaskDataModel> {

  @override
  GetTaskDataModel read(BinaryReader reader) {
    return GetTaskDataModel(
      hiveIndex: reader.readInt(),
      taskName: reader.readString(),
      taskGrade: reader.readInt(),
      startDate: reader.readString(),
      endDate: reader.readString(),
      status: reader.readString(),
      filePath: reader.readString(),
      createdAt: reader.readString(),
    );
  }
  @override
  final int typeId = 5;

  @override
  void write(BinaryWriter writer, GetTaskDataModel obj) {
    writer.writeInt(obj.hiveIndex ?? 0);
    writer.writeString(obj.taskName ?? '');
    writer.writeInt(obj.taskGrade ?? 0);
    writer.writeString(obj.startDate ?? '');
    writer.writeString(obj.endDate ?? '');
    writer.writeString(obj.status ?? '');
    writer.writeString(obj.filePath ?? '');
    writer.writeString(obj.createdAt ?? '');
  }
}
