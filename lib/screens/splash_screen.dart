import 'dart:async';

import 'package:flutter/material.dart';

import './sign_in.dart';

class SplashScreen extends StatelessWidget {
  static const String screenRoute = '/splash_screen';
  //const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, SignIn.screenRoute));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('images/logoB2B.png'),
              width: 150,
              height: 150,
            ),
            //CircleAvatar(
            //   radius: 65,
            //   backgroundImage: AssetImage('images/logoB2B.png'),
            // ),
          ),
          SizedBox(height: 30),
          Container(
            // color: Colors.black,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Text(
              'متجر موسلين',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
