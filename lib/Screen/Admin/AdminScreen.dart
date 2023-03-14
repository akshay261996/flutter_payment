import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Admin/Configure_IP_Address.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import '../GlobalConst/GlobalConst.dart';

import '../Merchant/MerchantScreen.dart';
import '../Tabbar/Tabbar.dart';
import 'Configure_IP_Address.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
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
            ADMIN,
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
                                    builder: (context) => Tabbar()));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('assets/images/parameter.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Parameter,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
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
                                  builder: (context) => MerchantScreen()));
                        },
                        child: Column(children: <Widget>[
                          Image.asset('assets/images/Certificatedownload.png',
                              //height: MediaQuery.of(context).size.height * 0.1,
                              //width: 0.1,
                              height: 100,
                              width: 50,
                              fit: BoxFit.contain),
                          Text(
                            Certificate,
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
                                  builder: (context) =>
                                      Configure_IP_Address()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/ConfigureIP.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Configure_IP,
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
                            Image.asset('assets/images/Configureterminal.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Configure_Terminal,
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
                            Image.asset('assets/images/Printconfig.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Print_Configuration,
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
