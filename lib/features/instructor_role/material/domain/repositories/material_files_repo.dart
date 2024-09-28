import 'package:dartz/dartz.dart';
import 'package:universityhup/core/errors/failure.dart';

import '../entities/material_file_entity.dart';

abstract class InsMaterialFilesRepo{
  Future<Either<Failure, List<FileEntity>>>getAllMaterialsFiles({required lecId});
}