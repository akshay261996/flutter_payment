import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Home/Payment/DeclineScreen.dart';
import 'package:flutter_sample/Screen/Home/Payment/InsertcardScreen.dart';

import '../../Components/Elevated_button.dart';

class ApprovedScreen extends StatefulWidget {
  const ApprovedScreen({super.key});

  @override
  State<ApprovedScreen> createState() => _ApprovedScreenState();
}

class _ApprovedScreenState extends State<ApprovedScreen> {
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
                      image: AssetImage('assets/images/approved.png'),
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
                'APPROVED',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              // child: Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Center(
                child: Elevatedbutton(
                  name: 'Next',
                  onPressed: () {
                    //Navigator.pushReplacementNamed(context, "HomeScreen");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeclineScreen()));
                  },
                  //child: Text('Next'),
                  // alignment: Alignment.center,
                  // height: 0,
                  // color: Colors.blueGrey,
                  // child: Image.asset('assets/images/keyboard.png'),
                ),
              ),
            ),
          ],
        ));
  }
}
