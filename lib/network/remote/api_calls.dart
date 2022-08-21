import 'package:weather_app/network/remote/dio_helper.dart';

class ApiCalls {


  static Future<String> getTemp() async {

    late String temp;
    await DioHelper.getData(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
          temp = value.data['main']['temp'].toString();
    });
    return temp;
  }


  // static Future<String> getCity() async {
  //
  //   late String temp;
  //   await DioHelper.getData(
  //       url: 'data/2.5/weather',
  //       query: {
  //         'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
  //         'q':'cairo',
  //         'units':'metric'
  //       }).then((value) {
  //     temp = value.data['name'].toString();
  //   });
  //   return temp;
  // }




}