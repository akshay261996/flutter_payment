//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Home/Payment/ApprovedScreen.dart';
import 'package:flutter_sample/Screen/Home/Payment/DeclineScreen.dart';
import 'package:flutter_sample/Screen/Home/Payment/PaymentAmount.dart';
//import 'package:flutter_sample/Screen/Home/GlobalConst/GlobalConst.dart';
import '../HomeScreen.dart';
import '../Payment/InsertcardScreen.dart';

class InsercardScreen extends StatefulWidget {
  const InsercardScreen({super.key});

  @override
  State<InsercardScreen> createState() => _InsercardScreenState();
}

class _InsercardScreenState extends State<InsercardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
                child: Text(
              'PAYMENT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
                child: Text(
              'Transaction Amount',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: 46,
          ),
          Container(
            child: Center(
                child: Text(
              'EUR 21.00',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
                child: Text(
              'Swipe, Tap or Insert Card ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  height: 100.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/insertcard1.png'),
                      //fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Insertcard2.png'),
                      //fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  height: 100.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Insertcard3.png'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Center(
                child: Text(
              'Time Remaining',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomCenter,
          ),
          Container(
            // margin: EdgeInsets.fromLTRB(0, 170, 0, 0),

            // child: Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent.shade700,
                    minimumSize: const Size.fromHeight(49),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0))

                    //minimumSize: const Size.fromWidth(double.infinity),// NEW
                    ),

                onPressed: () {
                  //Navigator.pushReplacementNamed(context, "HomeScreen");

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApprovedScreen()));
                },
                child: Text(
                  'CANCEL',
                  style: TextStyle(color: Colors.black),
                ),

                // alignment: Alignment.center,
                // height: 0,
                // color: Colors.blueGrey,
                // child: Image.asset('assets/images/keyboard.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
