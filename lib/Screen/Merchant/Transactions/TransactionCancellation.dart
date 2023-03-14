import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//import '../Merchant/MerchantScreen.dart';

class TransactionCancellation extends StatefulWidget {
  const TransactionCancellation({super.key});

  @override
  State<TransactionCancellation> createState() => _TransactionCancellation();
}

class _TransactionCancellation extends State<TransactionCancellation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/images/logo_name.png', fit: BoxFit.cover),
        ),
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(title: Text("")),
      body: ListView(
        // child:SingleChildScrollView(),
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Transaction for cancellation',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(left:5),
              child: DataTable(
                horizontalMargin: double.minPositive,
                columns: [
                  DataColumn(
                      label: Text('Txn Type',
                          //overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Txn Ref No.',
                          //overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text('Amount',
                        //overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('DEBT')),
                    DataCell(Text('00000019')),
                    DataCell(Text('EUR 20.00')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('DEBT')),
                    DataCell(Text('00000019')),
                    DataCell(Text('EUR 20.00')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('DEBT')),
                    DataCell(Text('00000019')),
                    DataCell(Text('EUR 20.00')),
                  ]),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
