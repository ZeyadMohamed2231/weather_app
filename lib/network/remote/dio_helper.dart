import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper{

  static late Dio dio;

  // String apikey = 'appid=0dab3c4d1b13968732e8b9d2f550dc8f';
  // String city = 'cairo';

  static init () {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.openweathermap.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
  required String url,
  required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

  static Future<Response> getDataCity({
    required String url,
    required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

  static Future<Response> getDataFeelsLike({
    required String url,
    required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

  static Future<Response> getTempMin({
    required String url,
    required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

  static Future<Response> getTempMax({
    required String url,
    required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

  static Future<Response> getTempHumidity({
    required String url,
    required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

  static Future<Response> getTempUV({
    required String url,
    required Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,queryParameters: query,);
  }

}