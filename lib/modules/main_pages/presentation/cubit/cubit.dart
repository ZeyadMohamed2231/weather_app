import 'package:weather_app/modules/main_pages/presentation/cubit/cubit.dart';
import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/network/remote/api_calls.dart';

class TempCubit extends Cubit<TempStates>{
  late String temp;
  late String city;
  TempCubit() : super(AppInitialState());
  static TempCubit get(context) => BlocProvider.of(context);



  void getTemp() async{
    await ApiCalls.getTemp().then((value) {
      temp = value;
    });

    emit(AppGetTempState());
  }


  // void getCity() async{
  //   await ApiCalls.getCity().then((value) {
  //
  //     city = value;
  //   });
  //   emit(AppGetCityState());
  // }

}