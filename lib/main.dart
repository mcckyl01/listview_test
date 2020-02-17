import 'package:flutter/material.dart';

import './products.dart';

import './content.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add('Laptop');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Image.asset('assets/blue-logo.png',
            height: 50,
            ),
          ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Container(
                color: Colors.blueGrey,
              child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      splashColor: Colors.blueGrey,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _products.add('Laptop');
                        });
                      },
                    child: Text(
                      'Dashboard',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  ),
              Expanded(child: Products(_products))
            ]),
            ),
            );
  }
}