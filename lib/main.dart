import 'package:flutter/material.dart';
import './transactiopn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> transaction = [
    Transaction('t1', 'Jazz', '50', DateTime.now()),
    Transaction('t2', 'Nottbook', '500', DateTime.now()),
    Transaction('t2', 'Shock ', '500', DateTime.now()),
    Transaction('t2', 'Warp of the month', '500', DateTime.now()),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List App'),
        ),
        body: Column(
            children: transaction.map((tx) {
          return Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text(tx.title),
              subtitle: Text(tx.amount),
            )
          ]));
        }).toList()));
  }
}
