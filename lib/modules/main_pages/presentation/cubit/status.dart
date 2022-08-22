import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';

abstract class TempStates {}

class AppInitialState extends TempStates {}

class AppGetTempState extends TempStates {}

class AppGetCityState extends TempStates {}

class AppTempFeelsLikeState extends TempStates {}

class AppTempMinState extends TempStates {}

class AppTempMaxState extends TempStates {}

class AppTempHum extends TempStates {}