import 'package:flutter/material.dart';
import './content.dart';
import './products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];
   int _currentIndex = 0;
   String _title;

  final List<Widget> _children = [
    ContentPage(title: "Dashboard"),
    ContentPage(title: "Add Tokens"),
    ContentPage(title: "Menu"),
    ContentPage(title: "Settings")
  ];
  void _onBottomNavBarTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
             bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavBarTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,
            color: Colors.black,
            ),
            title: Text('Dashboard',
            style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,
            color: Colors.black,
            ),
            title: Text('Add Tokens',
            style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,
            color: Colors.black,
            ),
            title: Text('Menu',
            style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
            color: Colors.black,
            ),
            title: Text('Settings',
            style: TextStyle(color: Colors.black),),
          )
        ],
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