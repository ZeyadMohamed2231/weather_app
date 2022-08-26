


import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';
import 'package:sunrise_sunset_calc/sunrise_sunset_calc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/network/remote/api_calls.dart';
import 'dart:math';



class TempCubit extends Cubit<TempStates>{

  late String temp;
  late String city;
  late String tempFeelsLike;
  late String tempMin;
  late String tempMax;
  late String tempFirstDay;
  late String tempSecondDay;
  late String tempThirdDay;
  late String tempFourthDay;
  late String tempFifthDay;
  late String tempSixDay;
  late String tempSevenDay;


  late String tempFirstDayMax;
  late String tempSecondDayMax;
  late String tempThirdDayMax;
  late String tempFourthDayMax;
  late String tempFifthDayMax;
  late String tempSixDayMax;
  late String tempSevenDayMax;

  late String tempSunrise;
  late String tempSunset;

  late String tempUV;
  late String tempWind;
  late String tempHum;

  late String tempFirst;
  late String tempLast;




  TempCubit() : super(AppInitialState());
  static TempCubit get(context) => BlocProvider.of(context);



  void getTemp() async{
    await ApiCalls.getTemp().then((value) {
      temp = value;
    });

    emit(AppGetTempState());
  }

  void getCity() async{
    await ApiCalls.getCity().then((value) {
      city = value;
    });
    emit(AppGetCityState());
  }

  void getTempFeelsLike() async{
    await ApiCalls.getTempFeelsLike().then((value) {
      tempFeelsLike = value;
    });
    emit(AppTempFeelsLikeState());
  }

  void getTempMin() async{
    await ApiCalls.getTempMin().then((value) {
      tempMin = value;
    });
    emit(AppTempMinState());
  }


  void getTempMax() async{
    await ApiCalls.getTempMax().then((value) {
      tempMax = value;
    });
    emit(AppTempMaxState());
  }

  void getTempFirstDayMin() async{
    await ApiCalls.getTempFirstDayMin().then((value) {
      tempFirstDay = value.split('.')[0];
    });
    emit(AppTempFirstDay());
  }

  void getTempSecDayMin() async{
    await ApiCalls.getTempSecDayMin().then((value) {
      tempSecondDay = value.split('.')[0];
    });
    emit(AppTempSecondDay());
  }
  void getTempThirdDayMin() async{
    await ApiCalls.getTempThirdDayMin().then((value) {
      tempThirdDay = value.split('.')[0];
    });
    emit(AppTempThirdDay());
  }
  void getTempFourthDayMin() async{
    await ApiCalls.getTempFourthDayMin().then((value) {
      tempFourthDay = value.split('.')[0];
    });
    emit(AppTempFourthDay());
  }
  void getTempFifthDayMin() async{
    await ApiCalls.getTempFifthDayMin().then((value) {
      tempFifthDay = value.split('.')[0];
    });
    emit(AppTempFifthDay());
  }
  void getTempSixDayMin() async{
    await ApiCalls.getTempSixDayMin().then((value) {
      tempSixDay = value.split('.')[0];
    });
    emit(AppTempSixDay());
  }
  void getTempSevenDayMin() async{
    await ApiCalls.getTempSevenDayMin().then((value) {
      tempSevenDay = value.split('.')[0];
    });
    emit(AppTempSevenDay());
  }


  void getTempFirstDayMax() async{
    await ApiCalls.getTempFirstDayMax().then((value) {
      tempFirstDayMax = value.split('.')[0];
    });
    emit(AppTempFirstDay());
  }

  void getTempSecDayMax() async{
    await ApiCalls.getTempSecDayMax().then((value) {
      tempSecondDayMax = value.split('.')[0];
    });
    emit(AppTempSecondDay());
  }
  void getTempThirdDayMax() async{
    await ApiCalls.getTempThirdDayMax().then((value) {
      tempThirdDayMax = value.split('.')[0];
    });
    emit(AppTempThirdDay());
  }
  void getTempFourthDayMax() async{
    await ApiCalls.getTempFourthDayMax().then((value) {
      tempFourthDayMax = value.split('.')[0];
    });
    emit(AppTempFourthDay());
  }
  void getTempFifthDayMax() async{
    await ApiCalls.getTempFifthDayMax().then((value) {
      tempFifthDayMax = value.split('.')[0];
    });
    emit(AppTempFifthDay());
  }
  void getTempSixDayMax() async{
    await ApiCalls.getTempSixDayMax().then((value) {
      tempSixDayMax = value.split('.')[0];
    });
    emit(AppTempSixDay());
  }
  void getTempSevenDayMax() async{
    await ApiCalls.getTempSevenDayMax().then((value) {
      tempSevenDayMax = value.split('.')[0];
    });
    emit(AppTempSevenDay());
  }
  void getTempSunrise() async{
    var sunriseSunset = getSunriseSunset(60.0, 60.0, Duration(hours: 5), DateTime.now());
    tempSunrise =sunriseSunset.sunrise.toString().split(" ")[1].split('.')[0].substring(1,5);
    emit(AppTempSunrise());
  }
  void getTempSunset() async{
    var sunriseSunset = getSunriseSunset(60.0, 60.0, Duration(hours: 5), DateTime.now());
    tempSunset =sunriseSunset.sunset.toString().split(" ")[1].split('.')[0].substring(0,5);
    emit(AppTempSunrise());
  }

  void getTempUV() async{
    await ApiCalls.getTempUV().then((value) {
      tempUV = value;
    });
    emit(AppTempUV());
  }

  void getTempWind() async{
    await ApiCalls.getTempWind().then((value) {
      tempWind = value;
    });
    emit(AppTempWind());
  }

  void getTempHum() async{
    await ApiCalls.getTempHum().then((value) {
      tempHum = value;
    });
    emit(AppTempHum());
  }
  void getTempsDay(){

  }
}