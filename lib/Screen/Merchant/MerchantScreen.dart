import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import 'package:flutter_sample/Screen/Home/HomeScreen.dart';
import '../GlobalConst/GlobalConst.dart';

import '../Admin/AdminScreen.dart';
import '../Tabbar/Tabbar.dart';
import 'Transactions/TransactionCancellation.dart';
import 'Transactions/Transactions.dart';
import 'Transactions/Transactionsummary.dart';

class MerchantScreen extends StatefulWidget {
  const MerchantScreen({super.key});

  @override
  State<MerchantScreen> createState() => _MerchantScreenState();
}

class _MerchantScreenState extends State<MerchantScreen> {
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
            MERCHANT,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: GridView.count(
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
                                    builder: (context) => HomeScreen()));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('assets/images/SummaryReportIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Summary_Report,
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
                                  builder: (context) =>
                                      TransactionCancellation()));
                        },
                        child: Column(children: <Widget>[
                          Image.asset('assets/images/DetailedReportIcon.png',
                              height: 100, width: 50, fit: BoxFit.contain),
                          Text(
                            Detailed_Report,
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
                                  builder: (context) => Transactions()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/TransactionIcon.png',
                                height: 90, width: 50, fit: BoxFit.contain),
                            Text(
                              Transactions_History,
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
                                  builder: (context) => AdminScreen()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                                'assets/images/PerformSettlementIcon.png',
                                height: 90,
                                width: 50,
                                fit: BoxFit.contain),
                            Text(
                              Perform_Settlement,
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
                                  builder: (context) => AdminScreen()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                                'assets/images/PerformDiagnosticsIcon.png',
                                height: 90,
                                width: 50,
                                fit: BoxFit.contain),
                            Text(
                              Perform_Diagnostics,
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
                                  builder: (context) => AdminScreen()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/SettingsIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Change_Settings,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
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
