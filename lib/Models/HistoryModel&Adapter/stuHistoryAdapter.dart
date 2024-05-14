import 'package:hive/hive.dart';

import 'historyModel.dart';

class StuHistoryModelAdapter extends TypeAdapter<StuHistoryModel> {
  @override
  final int typeId = 7; // Unique identifier for this type adapter

  @override
  StuHistoryModel read(BinaryReader reader) {
    return StuHistoryModel(
      hiveIndex: reader.readInt(),
      materialName: reader.readString(),
      instructorName: reader.readString(),
      historyName: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, StuHistoryModel obj) {
    writer.writeInt(obj.hiveIndex ?? 0);
    writer.writeString(obj.materialName ?? '');
    writer.writeString(obj.instructorName ?? '');
    writer.writeString(obj.historyName ?? '');
  }
}