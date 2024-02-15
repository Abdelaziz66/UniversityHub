import 'package:dio/dio.dart';

class Dio_Helper {
   static late Dio dio;
   static init(){
     dio=Dio(
       BaseOptions(
           baseUrl:'https://crudapi20240209215103.azurewebsites.net/api/',
           receiveDataWhenStatusError:true,
       )
     );
   }

   static Future<Response> GetDaata(
   {
     required String url,
      Map<String, dynamic>? query,
}
       )
   async{
     // dio.options.headers={
     //   'lang':lang,
     //   'authorizatio':token??'',
     //   'Content-Type':'application/json',
     // };
     return await dio.get(url,queryParameters: query);
   }

   static Future<Response> PostData({
     required String url,
      Map<String, dynamic>? query,
     required Map<String , dynamic> data,
})async {
   //  dio.options.headers={
     //   'lang':lang,
     //   'authorizatio':token??'',
     //  'Content-Type':'application/json'
       //'text/plain',
       //'application/x-www-form-urlencoded',
     //};
     return await dio.post(url,queryParameters: query,data: data);
   }
}