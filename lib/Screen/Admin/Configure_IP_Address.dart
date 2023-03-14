import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/Screen/Merchant/MerchantScreen.dart';
import 'package:flutter_sample/Screen/Tabbar/Tabbar.dart';
import '../Components/app_card.dart';
import '../GlobalConst/GlobalConst.dart';
import 'AdminScreen.dart';

class Configure_IP_Address extends StatefulWidget {
  const Configure_IP_Address({super.key});

  @override
  State<Configure_IP_Address> createState() => _Configure_IP_AddressState();
}

class _Configure_IP_AddressState extends State<Configure_IP_Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Configure_IP,
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
                            Image.asset('assets/images/Configure_TMS_IP.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Configure_TMS,
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
                                  builder: (context) => MerchantScreen()));
                        },
                        child: Column(children: <Widget>[
                          Image.asset('assets/images/View_TMS_IP.png',
                              height: 100, width: 50, fit: BoxFit.contain),
                          Text(
                            View_TMS,
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
                                  builder: (context) => AdminScreen()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/View_Acquirer_IP.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              View_Acquirer,
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
