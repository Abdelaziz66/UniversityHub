import 'package:dartz/dartz.dart';
import 'package:universityhup/core/errors/failure.dart';
import 'package:universityhup/core/use_cases/use_case.dart';

import '../../data/repositories/material_files_repo_impl.dart';
import '../entities/material_file_entity.dart';

class MaterialFilesUseCase extends UseCase<List<FileEntity>,String>{
   MaterialFilesUseCase({required this.filesRepo});
   final MaterialFilesRepository filesRepo;
   
  @override
  Future<Either<Failure,List<FileEntity>>> call([String? param]) {
  return filesRepo.getAllMaterialsFiles(lecId: param!);
  }
}