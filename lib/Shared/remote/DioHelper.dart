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
    required Map<String, dynamic> data,
  }) async {
    //  dio.options.headers={
    //   'lang':lang,
    //   'authorizatio':token??'',
    //  'Content-Type':'application/json'
    //'text/plain',
    //'application/x-www-form-urlencoded',
    //};
    return await dio.post(url, queryParameters: query, data: data);
  }
}
