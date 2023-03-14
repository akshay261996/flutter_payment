import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//import '../Merchant/MerchantScreen.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
        ),
      // appBar: AppBar(title: Text("Transaction History")),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              'Transaction History',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                horizontalMargin: double.minPositive,
                columns: [
                  DataColumn(
                      label: Text('settlement id',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Name',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Name',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('john')),
                    DataCell(Text('student')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('5')),
                    DataCell(Text('John')),
                    DataCell(Text('Student')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('5')),
                    DataCell(Text('John')),
                    DataCell(Text('Student')),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
