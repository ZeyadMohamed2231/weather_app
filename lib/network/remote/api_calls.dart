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
print(temp);
    return temp;
  }


  static Future<String> getCity() async {
    late String city;
    await DioHelper.getDataCity(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      city = value.data['name'].toString();
    });
    print(city);
    return city;
  }

  static Future<String> getTempFeelsLike() async {
    late String tempFeelsLike;
    await DioHelper.getDataFeelsLike(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempFeelsLike = value.data['main']['feels_like'].toString();
    });
    print(tempFeelsLike);
    return tempFeelsLike;
  }


  static Future<String> getTempMin() async {
    late String tempMin;
    await DioHelper.getTempMin(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempMin = value.data['main']['temp_min'].toString();
    });
    print(tempMin);
    return tempMin;
  }


  static Future<String> getTempMax() async {
    late String tempMax;
    await DioHelper.getTempMax(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempMax = value.data['main']['temp_max'].toString();
    });
    print(tempMax);
    return tempMax;
  }

  static Future<String> getTempHumidity() async {
    late String tempHumidity;
    await DioHelper.getTempHumidity(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempHumidity = value.data['weather']['description'].toString();
    });
    print(tempHumidity);
    return tempHumidity;
  }

  static Future<String> getTempUV() async {
    late String tempUV;
    await DioHelper.getTempUV(
        url: 'data/2.5/weather',
        query: {
          'appid':'0dab3c4d1b13968732e8b9d2f550dc8f',
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['main']['humidity'].toString();
    });
    print(tempUV);
    return tempUV;
  }


}