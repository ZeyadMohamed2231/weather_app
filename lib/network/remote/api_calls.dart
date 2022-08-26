import 'package:weather_app/network/remote/dio_helper.dart';
import 'package:weather_app/shared/text_constants.dart';
class ApiCalls {



  static Future<String> getTemp() async {

    late String temp;
    await DioHelper.getData(
        url: 'data/2.5/weather',
        query: {
          'appid':appid,
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
          'appid':appid,
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
          'appid':appid,
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
          'appid':appid,
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
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempMax = value.data['main']['temp_max'].toString();
    });
    print(tempMax);
    return tempMax;
  }



  static Future<String> getTempFirstDayMin() async {
    late String tempUV;
    await DioHelper.getTempFirstDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][0]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }


  static Future<String> getTempSecDayMin() async {
    late String tempUV;
    await DioHelper.getTempSecDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][7]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempThirdDayMin() async {
    late String tempUV;
    await DioHelper.getTempThirdDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][15]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempFourthDayMin() async {
    late String tempUV;
    await DioHelper.getTempFourthDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][23]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempFifthDayMin() async {
    late String tempUV;
    await DioHelper.getTempFifthDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][31]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempSixDayMin() async {
    late String tempUV;
    await DioHelper.getTempSixDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][39]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }

  static Future<String> getTempSevenDayMin() async {
    late String tempUV;
    await DioHelper.getTempSevenDayMin(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][0]['main']['temp_min'].toString();
    });
    print(tempUV);
    return tempUV;
  }


  static Future<String> getTempFirstDayMax() async {
    late String tempUV;
    await DioHelper.getTempFirstDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][0]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }


  static Future<String> getTempSecDayMax() async {
    late String tempUV;
    await DioHelper.getTempSecDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][7]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempThirdDayMax() async {
    late String tempUV;
    await DioHelper.getTempThirdDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][15]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempFourthDayMax() async {
    late String tempUV;
    await DioHelper.getTempFourthDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][23]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempFifthDayMax() async {
    late String tempUV;
    await DioHelper.getTempFifthDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][31]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }
  static Future<String> getTempSixDayMax() async {
    late String tempUV;
    await DioHelper.getTempSixDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][39]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }

  static Future<String> getTempSevenDayMax() async {
    late String tempUV;
    await DioHelper.getTempSevenDayMax(
        url: 'data/2.5/forecast',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempUV = value.data['list'][0]['main']['temp_max'].toString();
    });
    print(tempUV);
    return tempUV;
  }

  static Future<String> getTempUV() async {
    late String tempMax;
    await DioHelper.getTempUV(
        url: 'data/2.5/weather',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempMax = value.data['weather']['main'].toString();
    });
    print(tempMax);
    return tempMax;
  }
  static Future<String> getTempWind() async {
    late String tempMax;
    await DioHelper.getTempWind(
        url: 'data/2.5/weather',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempMax = value.data['wind']['speed'].toString();
    });
    print(tempMax);
    return tempMax;
  }
  static Future<String> getTempHum() async {
    late String tempMax;
    await DioHelper.getTempHum(
        url: 'data/2.5/weather',
        query: {
          'appid':appid,
          'q':'cairo',
          'units':'metric'
        }).then((value) {
      tempMax = value.data['main']['humidity'].toString();
    });
    print(tempMax);
    return tempMax;
  }
}