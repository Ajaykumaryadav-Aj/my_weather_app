import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Aix-en-Provence',
                    style: TextStyle(
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
                  Image.asset(
                    'assets/2.png',
                    scale: 1.5,
                  ),
                  const Text(
                    '20C  ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 55,
                        color: Colors.white),
                  ),
                  const Text(
                    'thunderstrom',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  const Text(
                    'Wednesday 24 . 04.45pm',
                    style: TextStyle(
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
                          const Column(
                            children: [
                              Text(
                                'Sunrise',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Text(
                                '5:35 am',
                                style: TextStyle(
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
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sunset',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Text(
                                '5:35 pm',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                          const Column(
                            children: [
                              Text(
                                'Temp max',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Text(
                                '30 c',
                                style: TextStyle(
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
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Temp min',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Text(
                                '12 c',
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
            )
          ],
        ),
      ),
    );
  }
}
