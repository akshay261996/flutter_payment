import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter_sample/Screen/Home/Payment/PaymentAmount.dart';
import 'package:flutter_sample/Screen/Login/loginScreen.dart';
import 'package:flutter_sample/Screen/Components/Elevated_button.dart';

class DeclineScreen extends StatefulWidget {
  const DeclineScreen({super.key});

  @override
  State<DeclineScreen> createState() => _DeclineScreenState();
}

class _DeclineScreenState extends State<DeclineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Center(
                  child: Text(
                'PAYMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Center(
                  child: Text(
                'EUR 21.00',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                  // child: Center(
                  //     child: Text(
                  //   'PAYMENT',
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  //   textAlign: TextAlign.center,
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/decline.png'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                  child: Text(
                'DECLINE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(
              height: 60,
            ),
            Elevatedbutton(
              //minimumSize:Size.fromWidth(50),
              name: 'Next',
              // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              //   child: Center(
              // child: ElevatedButton(
              onPressed: () {
                //Navigator.pushReplacementNamed(context, "HomeScreen");

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              //child: Text('Next'),
              // alignment: Alignment.center,
              // height: 0,
              // color: Colors.blueGrey,
              // child: Image.asset('assets/images/keyboard.png'),
            ),
            // )),
          ],
        ));
  }
}
//------------------------------------------------------------------------------
// class DeclineScreen extends StatefulWidget {
//   const DeclineScreen({super.key});

//   @override
//   State<DeclineScreen> createState() => _DeclineScreenState();
// }

// class _DeclineScreenState extends State<DeclineScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Components'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(0),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[Elevatedbutton(name: 'text')],
//         ),
//       ),
//     );
//   }
// }
