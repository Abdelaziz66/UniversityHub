import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(

      BaseOptions(

        baseUrl:
            'https://lms.runasp.net/api/', //'https://nabilramadan.bsite.net/api/',
        receiveDataWhenStatusError: true,
      ),
    );
    // Disable SSL certificate verification (not recommended for production)
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

  }

  static Future<Response> get(
      {required String url, Map<String, dynamic>? query, String? token}) async {
    dio.options.headers = {
      //   'lang':lang,
      //   'authorizatio':token??'',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> post({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token ?? ''}',
    };
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> postListFileData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,
    List<File>? files,
  }) async {
    FormData formData = FormData();
    dio.options.headers = {
      //'Content-Type': 'application/json',
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
    }
    return await dio.post(
      url,
      queryParameters: query,
      data: formData,
    );
  }

  static Future<Response> downloadFile(
      {required String networkFilePath,
      required String localFilePath,
      String? token}) async {
    dio.options.headers = {
      // 'lang':lang,
      //'authorizatio':token??'',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'responseType': ResponseType.bytes,
    };
    return await dio.download(networkFilePath, localFilePath);
  }

  static Future<Response> updateData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,
    File? updateFile,
  }) async {
    //  FormData formData=FormData();
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    FormData formData = FormData();
    String fileName = updateFile!.path.split('/').last; // Get the file name
    formData.files.add(MapEntry(
      'file', // 'file' is the key name expected by the API for each file
      await MultipartFile.fromFile(
        updateFile.path,
        filename: fileName,
      ),
    ));
    return await dio.put(url, queryParameters: query, data: data ?? formData);
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,
  }) async {
    //  FormData formData=FormData();
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    return await dio.delete(url, queryParameters: query, data: data);
  }
}

// class DioHelper2{
//
//   static late Dio dio2;
//
//   static initDio() {
//     dio2 = Dio(BaseOptions(
//       baseUrl: 'https://lms.runasp.net/api/',//'https://nabilramadan.bsite.net/api/',
//       receiveDataWhenStatusError: true,
//     ));
//     (dio2.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
//       client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//   }
//
//
//   static Future<Response>DownloadFile2({
//     required String networkfilePath,
//     required String localfilePath,
//     String? token
//
//   })async{
//     dio2.options.headers={
//       // 'lang':lang,
//       //'authorizatio':token??'',
//       //'Content-Type':'application/json',
//       //'Accept':'application/json',
//       //'Authorization':'Bearer $token',
//       //'responseType': ResponseType.bytes,
//     };
//     return await dio2.download(networkfilePath, localfilePath);
//   }
//
// }
