import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Home/Payment/PaymentAmount.dart';
import '../GlobalConst/GlobalConst.dart';

import '../Admin/AdminScreen.dart';
import '../Dashboard/Dashboard.dart';
import '../Merchant/MerchantScreen.dart';
import '../Tabbar/Tabbar.dart';
import '../Home/Payment/PaymentAmount.dart';
import '../Home/Payment/InsertcardScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
        ),
        // body: Center(
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => const Tabbar()));
        //       // Navigator.of(context).pushNamedAndRemoveUntil(
        //       //     'AdminScreen', (Route<dynamic> route) => false);
        //       //Navigator.pushNamed(context, '/home');
        //       //Navigator.of(context).pushNamed("HomeScreen");
        //     },
        //     child: const Text('Go back!'),
        //   ),
        // ),

        body: Column(children: [
          Text(
            HOME,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: GridView.count(
                //controller: ScrollController(),
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                children: <Widget>[
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Card(
                        color: Colors.blue,
                        child: GestureDetector(
                          onTap: () {
                            //Navigator.pushReplacementNamed(context, "HomeScreen");

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentAmount()));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('assets/images/PaymentIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Payment,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.blue,
                      child: GestureDetector(
                        onTap: () {
                          //Navigator.pushReplacementNamed(context, "HomeScreen");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentAmount()));
                        },
                        child: Column(children: <Widget>[
                          Image.asset('assets/images/RefundIcon.png',
                              height: 100, width: 50, fit: BoxFit.contain),
                          Text(
                            Refund,
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.blue,
                      child: GestureDetector(
                        onTap: () {
                          //Navigator.pushReplacementNamed(context, "HomeScreen");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentAmount()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/CancellationIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Cancellation,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.blue,
                      child: GestureDetector(
                        onTap: () {
                          //Navigator.pushReplacementNamed(context, "HomeScreen");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentAmount()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/RecieptPrintIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            //Padding(
                            //padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                            Text(
                              Duplicate_Receipt,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            //),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ]));
  }
}
