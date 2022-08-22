import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/modules/main_pages/presentation/cubit/cubit.dart';
import 'package:weather_app/modules/main_pages/presentation/cubit/status.dart';
import 'package:weather_app/network/remote/api_calls.dart';
import 'package:weather_app/network/remote/dio_helper.dart';
import 'package:weather_app/shared/components/card.dart';
import 'package:weather_app/shared/components/text.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {




    return BlocProvider(
      create :(context) {

        return TempCubit();
      },
      child: BlocConsumer<TempCubit,TempStates>(
        listener: (BuildContext context,TempStates state){

        },
        builder: (BuildContext context,TempStates state)  {
          TempCubit cubit = TempCubit.get(context);


          return Scaffold(
            backgroundColor: Colors.lightBlue,
            appBar: AppBar(
              backgroundColor: Colors.lightBlue,
              elevation: 0,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.lightBlue,
                statusBarIconBrightness: Brightness.light,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {


                // print(DateFormat('EEEE').format(DateTime.now().day!+1));
                print(DateTime.now().day+1);

                cubit.getTempMin();
                cubit.getTempMax();



              },),
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
                            "${cubit.temp.split('.')[0]}°",
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
                            "${cubit.tempMin.split('.')[0]}°/${cubit.tempMax.split('.')[0]}° Feels like ${cubit.tempFeelsLike.split('.')[0]}°",
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
                        "assets/images/sunny.gif",
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
                            widget: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(
                                      children:  [
                                        Column(
                                          children:  [
                                            MyText(text: '${DateTime.now().hour.toString()}:00', color: Colors.white, fontSize: 19),
                                            const SizedBox(height: 5,),
                                            const Icon(Icons.sunny, color: Colors.yellow,),
                                            const SizedBox(height: 5,),
                                            const MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
                                          ],
                                        ),
                                        const SizedBox(width: 20,),
                                        Column(
                                          children: const [
                                            MyText(text: '3 pm', color: Colors.white, fontSize: 19),
                                            SizedBox(height: 5,),
                                            Icon(Icons.sunny, color: Colors.yellow,),
                                            SizedBox(height: 5,),
                                            MyText(text: '34°', color: Colors.white, fontSize: 24)
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
                            widget: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children:  [
                                      MyText(text: DateFormat('EEEE').format(DateTime.now()), color: Colors.white, fontSize: 20),
                                      const SizedBox(width: 50,),
                                      const Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      const MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      const SizedBox(width: 30,),
                                      const Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      const SizedBox(width: 5,),
                                      const MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children:  [
                                      MyText(text: DateTime.monday.toString(), color: Colors.white, fontSize: 20),
                                      SizedBox(width: 50,),
                                      Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      SizedBox(width: 30,),
                                      Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 5,),
                                      MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children: const [
                                      MyText(text: "Today", color: Colors.white, fontSize: 20),
                                      SizedBox(width: 50,),
                                      Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      SizedBox(width: 30,),
                                      Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 5,),
                                      MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children: const [
                                      MyText(text: "Today", color: Colors.white, fontSize: 20),
                                      SizedBox(width: 50,),
                                      Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      SizedBox(width: 30,),
                                      Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 5,),
                                      MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children: const [
                                      MyText(text: "Today", color: Colors.white, fontSize: 20),
                                      SizedBox(width: 50,),
                                      Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      SizedBox(width: 30,),
                                      Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 5,),
                                      MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children: const [
                                      MyText(text: "Today", color: Colors.white, fontSize: 20),
                                      SizedBox(width: 50,),
                                      Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      SizedBox(width: 30,),
                                      Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 5,),
                                      MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                                  child: Row(
                                    children: const [
                                      MyText(text: "Today", color: Colors.white, fontSize: 20),
                                      SizedBox(width: 50,),
                                      Icon(Icons.water_drop,color: Colors.grey,size: 15,),
                                      MyText(text: "0%", color: Colors.grey, fontSize: 15),
                                      SizedBox(width: 30,),
                                      Icon(Icons.sunny,color: Colors.yellow,size: 28,),
                                      SizedBox(width: 5,),
                                      Icon(Icons.nights_stay,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 5,),
                                      MyText(text: "33° 24°", color: Colors.white, fontSize: 19)

                                    ],
                                  ),

                                ),
                              ],
                            )),
                        const SizedBox(height: 20,),
                        MyCard(
                            height: 200,
                            widget: Padding(
                              padding: const EdgeInsets.only(left:20.0,top:20,right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children:  [
                                        const MyText(text: 'Sunrise', color: Colors.white, fontSize: 25),
                                        const SizedBox(height: 10,),
                                        const MyText(text: '5:21 am', color: Colors.white, fontSize: 25),
                                        Image.asset(
                                          "assets/images/sunrise.gif",
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
                                        const MyText(text: '6:36 pm', color: Colors.white, fontSize: 25),
                                        Image.asset(
                                          "assets/images/sunrise.gif",
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
                            widget: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: const [
                                        Icon(Icons.sunny, size: 55,color: Colors.yellow,),
                                        MyText(text: 'UV index', color: Colors.white, fontSize: 25),
                                        SizedBox(height: 5,),
                                        MyText(text: 'High', color: Colors.grey, fontSize: 15),

                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: const [
                                        Icon(Icons.wind_power, size: 55,color: Colors.grey,),
                                        MyText(text: 'Wind', color: Colors.white, fontSize: 25),
                                        SizedBox(height: 5,),
                                        MyText(text: '23 km/h', color: Colors.grey, fontSize: 15),

                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: const [
                                        Icon(Icons.water_drop, size: 55,color: Colors.blue,),
                                        MyText(text: 'Humidity', color: Colors.white, fontSize: 25),
                                        SizedBox(height: 5,),
                                        MyText(text: '31%', color: Colors.grey, fontSize: 15),

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

              backgroundColor: Colors.lightBlue,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    title: const Text('Item 1'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('Item 2'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
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
