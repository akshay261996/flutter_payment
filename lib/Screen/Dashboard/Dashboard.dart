import 'package:flutter/material.dart';
import 'package:flutter_sample/Screen/Admin/AdminScreen.dart';
import 'package:flutter_sample/Screen/Home/HomeScreen.dart';
import 'package:flutter_sample/Screen/Merchant/MerchantScreen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sample/Screen/Tabbar/Tabbar.dart';
// import 'package:/flutter_sample/Screen/GlobalConst/GlobalConst.dart';
import '../GlobalConst/GlobalConst.dart';

// void main() {
//   runApp(Dashboard());
// }

// class Dashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //   title: 'WelCome to Flutter',
//       //   theme: ThemeData(primaryColor: Colors.red),
//       home: MyHomePage(),
//     );
//   }
// }
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

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
            DASHBOARD,
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
                            //Navigator.pushNamed(context, '/fourth');
                            //Navigator.pushReplacementNamed(context, "HomeScreen");

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tabbar()));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('assets/images/HomeIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Home,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
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
                          Image.asset('assets/images/MerchantIcon.png',
                              height: 100, width: 50, fit: BoxFit.contain),
                          Text(
                            Merchant,
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
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
                            Image.asset('assets/images/AdminIcon.png',
                                height: 100, width: 50, fit: BoxFit.contain),
                            Text(
                              Admin,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
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
