import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';

abstract class TempStates {}

class AppInitialState extends TempStates {}

class AppGetTempState extends TempStates {}

class AppGetCityState extends TempStates {}

class AppTempFeelsLikeState extends TempStates {}

class AppTempMinState extends TempStates {}

class AppTempMaxState extends TempStates {}



class AppTempFirstDay extends TempStates {}

class AppTempSecondDay extends TempStates {}

class AppTempThirdDay extends TempStates {}

class AppTempFourthDay extends TempStates {}

class AppTempFifthDay extends TempStates {}

class AppTempSixDay extends TempStates {}

class AppTempSevenDay extends TempStates {}

class AppTempSunrise extends TempStates {}

class AppTempSunset extends TempStates {}

class AppTempUV extends TempStates {}

class AppTempWind extends TempStates {}

class AppTempHum extends TempStates {}