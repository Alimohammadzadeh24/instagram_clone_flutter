import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instgram_clone/constant/Colors.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splashPattern.png'),
            opacity: 0.3,
            fit: BoxFit.fitWidth,
            repeat: ImageRepeat.repeatY,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/switchAccountImage.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 57.0,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: Container(
                          width: 340,
                          height: 351,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xffffffff).withOpacity(0.5),
                                Color(0xffffffff).withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                  width: 129,
                                  height: 129,
                                  image: AssetImage(
                                    'assets/images/profileImage.jpg',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text('Alimmz__',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium),
                              SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {},
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 32.0,
                              ),
                              Text(
                                'switch account',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 133, bottom: 63),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have an Account? / ",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16.0,
                      fontFamily: 'GB',
                    ),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16.0,
                      fontFamily: 'GB',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
