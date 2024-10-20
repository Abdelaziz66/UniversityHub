import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../constants/constant.dart';


class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
        BaseOptions(
      baseUrl: 'https://lms.runasp.net/api/',
      receiveDataWhenStatusError: true,
    ));
    // Disable SSL certificate verification (not recommended for production)
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  

  }




  static Future<Response> get({
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


  static Future<Response> post({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,

  }) async {
    dio.options.headers={
      'Content-Type':'application/json',
      'Authorization':'Bearer ${token?? ''}',
    };
    return await dio.post(
      url, queryParameters: query, data: data,);
  }

  static Future<Response> postListFileData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    List<File>?files,
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
      url, queryParameters: query, data: formData,
    );
  }

  static Future<Response>downloadFile({
    required String networkFilePath,
    required String localFilePath,
  })async{
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
    dio.options.headers={
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization':'Bearer $token',
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
    return await dio.put(
        url, queryParameters: query, data: data??formData);
  }

  static Future<Response> put({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    Map<String, dynamic>? data,
  }) async {
    dio.options.headers={
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization':'Bearer $token',
    };
    return await dio.put(
        url,data: data);
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



static Future<Response> uploadFile({
  required String url,
  Map<String, dynamic>? query,
  Map<String, dynamic>? data,
  required File file,  
}) async {
  FormData formData = FormData();
  dio.options.headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
  };
    String fileName = file.path.split('/').last;
    formData.files.add(MapEntry(
      'file',
      await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      ),
    ));
  return await dio.post(
    url,
    queryParameters: query,
    data: formData,
  );
}


 

}


class DioHelperForFiles{

  static late Dio dio;

  static init() {
    dio = Dio(
    //     BaseOptions(
    //   baseUrl: 'https://lms.runasp.net/api/',//'https://nabilramadan.bsite.net/api/',
    //   receiveDataWhenStatusError: true,
    // )
    );
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }


  static Future<Response>downloadFile({
    required String networkFilePath,
    required String localFilePath,

  })async{
    dio.options.headers={

    };
    return await dio.download(networkFilePath, localFilePath);
  }


}