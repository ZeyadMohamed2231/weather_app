import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/modules/main_pages/presentation/cubit/cubit.dart';
import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';
import 'package:weather_app/shared/components/card.dart';
import 'package:weather_app/shared/components/my_button.dart';
import 'package:weather_app/shared/components/text.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/shared/text_constants.dart';
class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Color getColor(){
      if(DateTime.now().hour<19 && DateTime.now().hour>5){
        return Colors.lightBlue;
      }else{
        return Colors.black;
      }
    }
    Color getWidgetColor(){
      if(DateTime.now().hour<19 && DateTime.now().hour>5){
        return  Colors.lightBlueAccent;
      }else{
        return Colors.grey;
      }
    }
    String getSunMoon(){
      if(DateTime.now().hour<19 && DateTime.now().hour>5){
        return  "assets/images/sunny.gif";
      }else{
        return "assets/images/moon.gif";
      }
    }
    String getSunRiseSet(){
      if(DateTime.now().hour<19 && DateTime.now().hour>5){
        return  "assets/images/sunrise.gif";
      }else{
        return "assets/images/sunrise_grey.gif";
      }
    }



    return BlocProvider(
      create :(context) {
        return TempCubit();
      },
      child: BlocConsumer<TempCubit,TempStates>(
        listener: (BuildContext context,TempStates state){

        },
        builder: (BuildContext context,TempStates state)  {
          TempCubit cubit = TempCubit.get(context);

          if(apiCond){
            cubit.getTemp();
            cubit.getTempMin();
            cubit.getTempFeelsLike();
            cubit.getTempMax();
            cubit.getCity();
            cubit.getTempFirstDayMax();
            cubit.getTempSecDayMax();
            cubit.getTempThirdDayMax();
            cubit.getTempFourthDayMax();
            cubit.getTempFifthDayMax();
            cubit.getTempSixDayMax();
            cubit.getTempSevenDayMax();
            cubit.getTempFirstDayMin();
            cubit.getTempSecDayMin();
            cubit.getTempThirdDayMin();
            cubit.getTempFourthDayMin();
            cubit.getTempFifthDayMin();
            cubit.getTempSixDayMin();
            cubit.getTempSevenDayMin();
            cubit.getTempSunrise();
            cubit.getTempSunset();
            cubit.getTempUV();
            cubit.getTempHum();
            cubit.getTempWind();
            apiCond = false;
          }

          return Scaffold(
            backgroundColor: getColor(),
            appBar: AppBar(
              backgroundColor: getColor(),
              elevation: 0,
              systemOverlayStyle:  SystemUiOverlayStyle(
                statusBarColor:  getColor(),
                statusBarIconBrightness: Brightness.light,
              ),
            ),

            body: Column(
              children: [
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                           Text(
                            "${cubit.temp.split('.')[0]}??",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 75,
                                fontWeight: FontWeight.w200
                            ),
                          ),
                          Row(
                            children:   [
                              Text(
                                cubit.city,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                              const SizedBox(width: 5,),
                              const Icon(Icons.location_pin,color: Colors.white,)
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                           Text(
                            "${cubit.tempMin.split('.')[0]}??/${cubit.tempMax.split('.')[0]}?? Feels like ${cubit.tempFeelsLike.split('.')[0]}??",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                           Text(

                            "${DateFormat('EEEE').format(DateTime.now())},  ${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,bottom: 30),
                      child: Image.asset(
                        getSunMoon(),
                        height: 125.0,
                        width: 125.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MyCard(
                            height: 130,
                            color: getWidgetColor(),
                            widget: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(

                                      children:  [
                                        Column(
                                          children:   [
                                            const MyText(text: '9:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.temp.split(".")[0])-2}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '10:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.temp.split(".")[0])-2}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '11:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.temp.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '12:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.temp}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '1:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMax}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '2:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMax}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '3:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMax}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '4:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.temp}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '5:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.temp}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '6:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '7:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '8:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '9:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '10:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '11:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '12:00Pm', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${cubit.tempMin}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '1:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '2:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '3:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text:  '4:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '5:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '6:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '7:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children:   [
                                            const MyText(text: '8:00Am', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            MyText(text: '${int.parse(cubit.tempMin.split(".")[0])-1}??', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                      ],




                                    ),

                                  ),
                                ),

                              ],
                            )
                        ),
                        const SizedBox(height: 20,),
                        MyCard(
                            height: 110,
                            color: getWidgetColor(),
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                children: const [
                                  MyText(text: 'Today Temperature', color: Colors.white, fontSize: 20),
                                  SizedBox(height: 10,),
                                  MyText(text: 'Expect the same as yesterday', color: Colors.blueGrey, fontSize: 18),
                                ],
                              ),
                            )),
                        const SizedBox(height: 20,),
                        MyCard(
                            height: 370,
                            color: getWidgetColor(),
                            widget: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children:    [
                                      const MyText(text: 'Saturday', color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 40,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempFirstDayMax}?? ${cubit.tempFirstDay}??", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:   [
                                      const MyText(text: 'Sunday', color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 55,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempSecondDayMax}?? ${cubit.tempSecondDay}??", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:  [
                                      const MyText(text: "Monday", color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 50,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempThirdDayMax}?? ${cubit.tempThirdDay}??", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:  [
                                      const MyText(text: "Tuesday", color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 45,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempFourthDayMax}?? ${cubit.tempFourthDay}??", color: Colors.white, fontSize: 19)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:  [
                                      const MyText(text: "Wednesday", color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 20,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempFifthDayMax}?? ${cubit.tempFifthDay}??", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:  [
                                      const MyText(text: "Thursday", color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 42,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempSixDayMax}?? ${cubit.tempSixDay}??", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:  [
                                      const MyText(text: "Friday", color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 70,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      MyText(text: "${cubit.tempSevenDayMax}?? ${cubit.tempSevenDay}??", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                              ],
                            )),
                        const SizedBox(height: 20,),
                        MyCard(
                            height: 200,
                            color: getWidgetColor(),
                            widget: Padding(
                              padding: const EdgeInsets.only(left:20.0,top:20,right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children:  [
                                        const MyText(text: 'Sunrise', color: Colors.white, fontSize: 25),
                                        const SizedBox(height: 10,),
                                         MyText(text: cubit.tempSunrise, color: Colors.white, fontSize: 25),
                                        Image.asset(
                                          getSunRiseSet(),
                                          height: 100.0,
                                          width: 100.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children:  [
                                        const MyText(text: 'Sunset', color: Colors.white, fontSize: 25),
                                        const SizedBox(height: 10,),
                                         MyText(text: cubit.tempSunset, color: Colors.white, fontSize: 25),
                                        Image.asset(
                                          getSunRiseSet(),
                                          height: 100.0,
                                          width: 100.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(height: 20,),
                        MyCard(
                            height: 170,
                            color: getWidgetColor(),
                            widget: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children:  const [
                                        Icon(Icons.sunny, size: 55,color: Colors.yellow,),
                                        MyText(text: 'UV index', color: Colors.white, fontSize: 25),
                                        SizedBox(height: 5,),
                                        MyText(text: "High", color: Colors.black26, fontSize: 15),

                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children:  [
                                        const Icon(Icons.wind_power, size: 55,color: Colors.black26,),
                                        const MyText(text: 'Wind', color: Colors.white, fontSize: 25),
                                        const SizedBox(height: 5,),
                                        MyText(text: '${cubit.tempWind} km/h', color: Colors.black26, fontSize: 15),

                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children:  [
                                        const Icon(Icons.water_drop, size: 55,color: Colors.blue,),
                                        const MyText(text: 'Humidity', color: Colors.white, fontSize: 25),
                                        const SizedBox(height: 5,),
                                        MyText(text: '${cubit.tempHum}%', color: Colors.black26, fontSize: 15),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            drawer: Drawer(
              backgroundColor: getColor(),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                   DrawerHeader(
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                      Icon(Icons.settings,color: Colors.white),
                ],
              ),
                    )

                  ),
                  ListTile(
                    leading: const Icon(Icons.star,color: Colors.white),
                    title: const Text('Favourite locations',style:TextStyle(color:Colors.white,fontSize:20)),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: const Padding(
                      padding: EdgeInsets.only(left:30.0,top:5),
                      child: Icon(Icons.location_pin,color: Colors.white,size: 15,),
                    ),
                    title: const Text('El Hay El Asher',style:TextStyle(color:Colors.white,fontSize:20)),
                    onTap: () {
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:50.0,right:50.0),
                    child: SizedBox(
                      width: double.infinity,
                        child: Text(' . . . . . . . . . . . . . . . . . . . . . . . . . . .',style: TextStyle(color:Colors.white),)),
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on_outlined,color: Colors.white),
                    title: const Text('Others locations',style:TextStyle(color:Colors.white,fontSize:15)),
                    onTap: () {
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right:20),
                    child: MyButton(text: "Manage Locations", height: 35, width: double.infinity, onPress: (){}),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top:10,left:50.0,right:50.0),
                    child: SizedBox(
                        width: double.infinity,
                        child: Text(' . . . . . . . . . . . . . . . . . . . . . . . . . . .',style: TextStyle(color:Colors.white),)),
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline,color: Colors.white),
                    title: const Text('Report Wrong Location',style:TextStyle(color:Colors.white,fontSize:20)),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.headset_mic_outlined,color: Colors.white),
                    title: const Text('Contact us',style:TextStyle(color:Colors.white,fontSize:20)),
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),

          );

      },


      ),
    );
  }
}
