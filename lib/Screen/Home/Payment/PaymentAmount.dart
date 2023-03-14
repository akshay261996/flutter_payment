import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter_sample/Screen/Home/Payment/ApprovedScreen.dart';
import 'package:flutter_sample/Screen/Home/Payment/InsertcardScreen.dart';
import '../../Components/Elevated_button.dart';
import '../HomeScreen.dart';
import 'package:flutter_sample/Screen/Home/Payment/PaymentAmount.dart';
import '../Payment/PaymentAmount.dart';
import 'package:flutter_sample/Screen/GlobalConst/GlobalConst.dart';

// class PaymentAmount extends StatefulWidget {
//   const PaymentAmount({super.key});

//   @override
//   State<PaymentAmount> createState() => _PaymentAmountState();
// }

// class _PaymentAmountState extends State<PaymentAmount> {
//   @override
//   Widget build(BuildContext context) {
//     // ignore: unnecessary_new
//     return new Scaffold(
//         appBar: AppBar(
//           title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
//         ),

//         // bottom:
//         //  Text(
//         // "qWerty1",
//         // // style: TextStyle(fontSize:12.0,
//         //   // color: const Color(0xFF000000),
//         //   // fontWeight: FontWeight.w200,
//         //   // fontFamily: "Roboto"),
//         // ),

//         body: Column(children: [
//           Text(
//             PAYMENT_AMOUNT,
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(20.0, 90, 20, 20),
//               child: new TextField(
//                 style: new TextStyle(
//                     fontSize: 22.0,
//                     color: const Color(0xFF000000),
//                     fontWeight: FontWeight.w200,
//                     fontFamily: "Roboto"),
//               ),
//             ),
//           ),
//           // Expanded(
//           //   child: Padding(
//           //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //     child: Container(
//           //       alignment: Alignment.center,
//           //       height: 0,
//           //       color: Colors.white,
//           //       child: Image.asset('assets/images/backbutton.png'),
//           //     ),
//           //   ),
//           // ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 0, 0, 300),
//             // child: Padding(
//             //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//             child: ElevatedButton(
//               onPressed: () {
//                 //Navigator.pushReplacementNamed(context, "HomeScreen");

//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => InsercardScreen()));
//               },
//               child: Text('Next'),
//               // alignment: Alignment.center,
//               // height: 0,
//               // color: Colors.blueGrey,
//               // child: Image.asset('assets/images/keyboard.png'),
//             ),
//           ),
//           //),
//           // Expanded(
//           //   child: Padding(
//           //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//           //     child: Container(
//           //       alignment: Alignment.center,
//           //       height: 0,
//           //       color: Colors.blueGrey,
//           //       child: Image.asset('assets/images/keyboard.png'),
//           //     ),
//           //   ),
//           // ),
//         ]));
//   }
// }

//----------------------------------------------------------------------------------------------

// class MyHomePage extends StatefulWidget {
//   MyHomePage({required Key key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('App Name'),
//       ),
//       // bottom:
//       //  Text(
//       // "qWerty1",
//       // // style: TextStyle(fontSize:12.0,
//       //   // color: const Color(0xFF000000),
//       //   // fontWeight: FontWeight.w200,
//       //   // fontFamily: "Roboto"),
//       // ),

//       body: new TextField(
//         style: new TextStyle(
//             fontSize: 12.0,
//             color: const Color(0xFF000000),
//             fontWeight: FontWeight.w200,
//             fontFamily: "Roboto"),
//       ),
//     );
//   }
// }
//------------------------------------------------------------------------------------------------
class PaymentAmount extends StatefulWidget {
  const PaymentAmount({super.key});

  @override
  State<PaymentAmount> createState() => _PaymentAmountState();
}

class _PaymentAmountState extends State<PaymentAmount> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
        ),

        // bottom:
        //  Text(
        // "qWerty1",
        // // style: TextStyle(fontSize:12.0,
        //   // color: const Color(0xFF000000),
        //   // fontWeight: FontWeight.w200,
        //   // fontFamily: "Roboto"),
        // ),

        body: Column(children: [
          Text(
            PAYMENT_AMOUNT,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 90, 20, 20),
              child: new TextField(
                style: new TextStyle(
                    fontSize: 22.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
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
            margin: EdgeInsets.fromLTRB(0, 0, 0, 300),
            // child: Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Elevatedbutton(
              name: 'Next',
              onPressed: () {
                //Navigator.pushReplacementNamed(context, "HomeScreen");
                //Navigator.pushNamed(context, '/fourth');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InsercardScreen()));
              },
              //child: Text('Next'),
              // alignment: Alignment.center,
              // height: 0,
              // color: Colors.blueGrey,
              // child: Image.asset('assets/images/keyboard.png'),
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
        ]));
  }
}
