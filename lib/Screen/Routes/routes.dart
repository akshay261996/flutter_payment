import 'package:flutter/material.dart';
import 'package:flutter_sample/Screen/Splash/SplashScreen.dart';

import '../Dashboard/Dashboard.dart';
import '../Home/Payment/InsertcardScreen.dart';
import '../Login/LoginScreen.dart';
import '../Tabbar/Tabbar.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      // '/' //:(context) => SplashScreen()
      //     '/first': (context) => SplashScreen(),
      // '/second': (context) => LoginScreen(),
      // '/third': (context) => Dashboard(),
      // '/fourth': (context) => Tabbar(),
      //'/fifth': (context) => InsercardScreen(),
    };
  }
}
