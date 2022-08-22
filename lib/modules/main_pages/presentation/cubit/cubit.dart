

import 'package:weather_app/modules/main_pages/presentation/cubit/cubit.dart';
import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/network/remote/api_calls.dart';

class TempCubit extends Cubit<TempStates>{
  late String temp;
  late String city;
  late String tempFeelsLike;
  late String tempMin;
  late String tempMax;
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

  void getTempHumidity() async{
    await ApiCalls.getTempHumidity().then((value) {
      tempMax = value;
    });
    emit(AppTempHum());
  }
}