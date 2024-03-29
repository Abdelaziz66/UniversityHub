import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';


class Dio_Helper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://lms.runasp.net/api/',//'https://nabilramadan.bsite.net/api/',
      receiveDataWhenStatusError: true,
    ));
    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
    //   client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };
  }

  static Future<Response> GetData({
    required String url,
    Map<String, dynamic>? query,
    String? token
  }) async {
     dio.options.headers={
    //   'lang':lang,
    //   'authorizatio':token??'',
       'Content-Type':'application/json',
       'Accept':'application/json',
       'Authorization':'Bearer $token',
     };
     return await dio.get(url, queryParameters: query);
  }

  static Future<Response> PostData({
    required String url,
    Map<String, dynamic>? query,
    String? token,

     Map<String, dynamic>? data,
    //String? filePath,
    //String? fileName,
   // File ? file,

  }) async {
  //  FormData formData=FormData();
        dio.options.headers={
    //   'lang':lang,
    //   'authorizatio':token??'',
    //  'Content-Type':'application/json'
    //'text/plain',
    //'application/x-www-form-urlencoded',
        'Content-Type':'application/json',
        'Accept':'application/json',
        'Authorization':'Bearer $token',
    };
      // formData.files.add(MapEntry(
      //   'file',
      // //  file.path
      //    await MultipartFile.fromFile(
      //      file!.path, // Replace 'path_to_your_file' with the actual file path
      //      filename: file.path.split('/').last, // Replace 'file_name' with the desired file name
      //    ),
      // )
      // );
    return await dio.post(
        url, queryParameters: query, data: data);
  }

  // static Future<Response> PostFileData({
  //   required String url,
  //   Map<String, dynamic>? query,
  //   String? token,
  //   Map<String, dynamic>? data,
  //   File ? file,
  // }) async {
  //   FormData formData=FormData();
  //   dio.options.headers={
  //     'Content-Type':'application/json',
  //     'Accept':'application/json',
  //     'Authorization':'Bearer $token',
  //   };
  //   formData.files.add(MapEntry(
  //     'file',
  //     await MultipartFile.fromFile(
  //       file!.path,
  //      filename: file.path.split('/').last,
  //     ),
  //   )
  //   );
  //   return await dio.post(
  //       url, queryParameters: query, data: formData,
  //   );
  // }


  static Future<Response> PostListFileData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,
    List<File>?files,
  }) async {
    FormData formData = FormData();
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    for (int i = 0; i < files!.length; i++) {
      File file = files[i];
      String fileName = file.path.split('/').last; // Get the file name
      formData.files.add(MapEntry(
        'file', // 'file' is the key name expected by the API for each file
        await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
      ));
      // formData.files.add(MapEntry(
      //   'file',
      //   await MultipartFile.fromFile(
      //     file!.path,
      //     filename: file.path.split('/').last,
      //   ),
      // )
      // );

    }
    return await dio.post(
      url, queryParameters: query, data: formData,
    );
  }

  static Future<Response>DownloadFile({
    required String networkfilePath,
    required String localfilePath,
    String? token

  })async{
    print('from dio $networkfilePath');
    print('from dio $localfilePath');
    dio.options.headers={
       // 'lang':lang,
        //'authorizatio':token??'',
      'Content-Type':'application/json',
      'Accept':'application/json',
       'Authorization':'Bearer $token',
      'responseType': ResponseType.bytes,
    };
    return await dio.download(networkfilePath, localfilePath);
  }


  static Future<Response> updateData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,

  }) async {
    //  FormData formData=FormData();
    dio.options.headers={
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization':'Bearer $token',
    };

    return await dio.put(
        url, queryParameters: query, data: data);
  }



  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,

  }) async {
    //  FormData formData=FormData();
    dio.options.headers={
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization':'Bearer $token',
    };

    return await dio.delete(
        url, queryParameters: query, data: data);
  }

}
