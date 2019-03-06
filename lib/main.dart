import 'package:flutter/material.dart';
import 'map_tab.dart';
import 'simple_tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    var tabs = [
      SimpleTab(),
      MapTab(),
    ];

    return Scaffold(
      body: tabs.elementAt(_selectedTab),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("empty"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text("map"),
          ),
        ],
      ),
    );
  }
}
