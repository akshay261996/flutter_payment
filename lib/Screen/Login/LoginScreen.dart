import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter_sample/Screen/Splash/SplashScreen.dart';
import '../Components/Elevated_button.dart';
import '../GlobalConst/GlobalConst.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // ResponsiveSizer(
    //   builder: (context, orientation, screenType) {
    //     return MaterialApp(
    //       home: SplashScreen(),
    //     );
    //   },
    // );
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo_name.png',
            fit: BoxFit.cover,
            // height: 30.5.h,
            // width: Adaptive.w(20),
          ),
        ),

        // bottom:
        //  Text(
        // "qWerty1",
        // // style: TextStyle(fontSize:12.0,
        //   // color: const Color(0xFF000000),
        //   // fontWeight: FontWeight.w200,
        //   // fontFamily: "Roboto"),
        // ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
            //Padding(

            //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Center(
              child: Text(
                Please_Login,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 20, 20, 0),
              child: new TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Operator/Merchant ID',
                  // style: new TextStyle(
                  //     fontSize: 20.0,
                  //     color: const Color(0xFF000000),
                  //     fontWeight: FontWeight.w200,
                  //     fontFamily: "Roboto"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 20, 20, 0),
              child: new TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                  // style: new TextStyle(
                  //     fontSize: 20.0,
                  //     color: const Color(0xFF000000),
                  //     fontWeight: FontWeight.w200,
                  //     fontFamily: "Roboto"),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 20, 20, 0),
              child: new TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Shift Number',
                  // style: new TextStyle(

                  //     fontSize: 20.0,
                  //     color: const Color(0xFF000000),
                  //     fontWeight: FontWeight.w200,
                  //     fontFamily: "Roboto"),
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          //     child: Container(
          //       alignment: Alignment.center,
          //       height: 0,
          //       color: Colors.white,
          //       child: Image.asset('assets/images/backbutton.png'),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
            // child: Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
              child: Elevatedbutton(
                name: PROCEED,

                // style: ElevatedButton.styleFrom(
                //   primary: Colors.blue,

                //   // minimumSize: const Size.fromHeight(49),
                //   // minimumSize: const Size.fromWidth(40),
                //   shape: ContinuousRectangleBorder(
                //       borderRadius: BorderRadius.circular(30)),

                //   minimumSize: Size(330, 50), // NEW
                // ),

                onPressed: () {
                  //Navigator.pushNamed(context, '/third');
                  //Navigator.pushReplacementNamed(context, "HomeScreen");

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                // child: Text(
                //   PROCEED,
                //   style: TextStyle(color: Colors.black),
                // ),
                // alignment: Alignment.center,
                // height: 0,
                // color: Colors.blueGrey,
                // child: Image.asset('assets/images/keyboard.png'),
              ),
            ),
          ),
          //),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          //     child: Container(
          //       alignment: Alignment.center,
          //       height: 0,
          //       color: Colors.blueGrey,
          //       child: Image.asset('assets/images/keyboard.png'),
          //     ),
          //   ),
          // ),
        ])));
  }
}
