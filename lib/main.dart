import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

// void main() {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.green,
//   ));
//   runApp(SplashScreen(
//     home: Dashboard(),
//     routes: {'Dashboard': (context) => Dashboard()},
//     Dashboard: null,
//   ));
//   debugShowCheckedModeBanner:
//   false;
// }

// class SplashScreen extends StatefulWidget {
//   const SplashScreen(
//       {super.key,
//       required Map<String, Dashboard Function(dynamic context)> routes,
//       required Dashboard,
//       required Dashboard home});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     void _dohere() {}

//     Timer(
//         Duration(seconds: 5),
//         // Future _dohere()async{
//         // () => Navigator.pushReplacement(
//         //     context, new MaterialPageRoute(builder: (context) => Dashboard()));});
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => Dashboard())));
//   }

//   void _dohere() {}

//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.yellow, child: FlutterLogo(size: 0));
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Splash Screen Example")),
//       body: Center(
//           child: Text("Welcome to Home Page",
//               style: TextStyle(color: Colors.black, fontSize: 30))),
//     );
//   }
// }
//--------------------------------------------------------------------------------------

// void main() { runApp(MyApp());}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   SplashScreenState createState() => SplashScreenState();
// }
// class SplashScreenState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 5),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) => HomeScreen()
//             )
//          )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.yellow,
//         child:FlutterLogo(size:MediaQuery.of(context).size.height)
//     );
//   }
// }
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("Splash Screen Example")),
//       body: Center(
//           child:Text("Welcome to Home Page",
//               style: TextStyle( color: Colors.black, fontSize: 30)
//           )
//       ),
//     );
//   }
// }
//---------------------------------------------------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:flutter_sample/Screen/Splash/SplashScreen.dart';
import 'package:flutter_sample/Screen/Home/HomeScreen.dart';
import 'package:flutter_sample/Screen/Merchant/MerchantScreen.dart';
import 'package:flutter_sample/Screen/Admin/AdminScreen.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter/src/widgets/framework.dart';
import "Screen/Admin/AdminScreen.dart";
import 'Screen/Home/HomeScreen.dart';
import 'Screen/Merchant/MerchantScreen.dart';
import 'Screen/Dashboard/Dashboard.dart';
import 'Screen/Routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    //routes: Routes.getRoutes(),
    //onGenerateRoute: RouteGenerator.generateRoute,
    home: SplashScreen(),
    //initialRoute: '/',
    // routes: {
    //   '/dashboard': (context) => Dashboard(),
    //   '/home': (context) => HomeScreen(),
    //   '/merchant': (context) => MerchantScreen(),
    //   '/admin': (context) => AdminScreen(),
    //   '/Splash': (context) => SplashScreen(),
    // },
  ));
}


