import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sample/Screen/Home/HomeScreen.dart';
//import 'package:flutter_sample/Screen/SummaryReport/summary.dart';
//import '../Merchant/MerchantScreen.dart';

class Transactionsummart extends StatefulWidget {
  const Transactionsummart({super.key});

  @override
  State<Transactionsummart> createState() => _Transactionsummart();
}

class _Transactionsummart extends State<Transactionsummart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
      ),
      //appBar: AppBar(title: Text("")),
      bottomNavigationBar: Container(
        height: 69,
        // margin: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
        child: Row(children: <Widget>[
          Expanded(
            child: ElevatedButton(
              // alignment: Alignment.center,
              // color: Color.fromRGBO(17, 147, 170, 1),
              onPressed: () => HomeScreen(),
              child: Text(
                "Cancel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 36, 111, 173),
              child: Text(
                "Print",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
