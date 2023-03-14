// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(SplashScreen());
// }

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 5),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => HomeScreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.yellow,
//         child: FlutterLogo(size: MediaQuery.of(context).size.height));
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
//---------------------------------------------------------------------------------------------------
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_sample/Screen/Login/loginScreen.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        home: AnimatedSplashScreen(
            duration: 50,
            splash: Image.asset('assets/images/splash.png'),
            nextScreen: LoginScreen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.blue));
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}
//-----------------------------------------------------
