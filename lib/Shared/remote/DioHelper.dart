import 'package:dio/dio.dart';

class Dio_Helper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://nabilramadan.bsite.net/api/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> GetData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    // dio.options.headers={
    //   'lang':lang,
    //   'authorizatio':token??'',
    //   'Content-Type':'application/json',
    // };
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
