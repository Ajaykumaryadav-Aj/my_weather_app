import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_weather_app/bloc/weather_bloc_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget getWeatherIcon(int code) {
    switch (code) {
      case >= 200 && <= 300:
        return Image.asset('assets/1.png');
      case >= 300 && < 400:
        return Image.asset('assets/2.png');

      case >= 500 && 600:
        return Image.asset("assets/3.png");
      case >= 600 && 700:
        return Image.asset("assets/4.png");
      case >= 700 && 800:
        return Image.asset('assets/5.png');
      case == 800:
        return Image.asset('assets/6');
      case > 800 && <= 804:
        return Image.asset('assets/8.png');
      default:
        return Image.asset('assets/7.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepPurple),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF673AB7)),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1.2),
              child: Container(
                height: 300,
                width: 600,
                decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
              builder: (context, state) {
                if (state is WeatherBlocSuccess) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${state.weather.areaName}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'Good Morning',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        getWeatherIcon(state.weather.weatherConditionCode!),
                        Text(
                          '${state.weather.temperature!.celsius!.round()} °C ',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 55,
                              color: Colors.white),
                        ),
                        Text(
                          state.weather.weatherMain!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Text(
                          DateFormat('EEE, M/d/y')
                              .add_jm()
                              .format(state.weather.date!),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/11.png',
                                  scale: 8,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      'Sunrise',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      DateFormat()
                                          .add_jm()
                                          .format(state.weather.sunrise!),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/12.png',
                                  scale: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Sunset',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      DateFormat()
                                          .add_jm()
                                          .format(state.weather.sunset!),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/13.png',
                                  scale: 8,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      'Temp max',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '${state.weather.tempMax!.celsius!.round()}°C',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/14.png',
                                  scale: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Temp min',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '${state.weather.tempMin!.celsius!.round()}°C',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                } else {
                  return Container(
                    child: const Text('Kuchh bi nhi'),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
