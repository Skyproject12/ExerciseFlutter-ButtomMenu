import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIn = 0;
  final tabsa = [
    Center(
      child: Container(
          child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(color: Colors.red),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.blue),
          )
        ],
      )),
    ),
    Center(
      child: Container(
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(color: Colors.green),
              ),
              Flexible(
                flex: 1,
                child: Container(color: Colors.white),
              )
            ],
          )),
    ),
    Center(
      child: Text('Camera'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: tabsa[currentIn],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIn,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
            //backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Search'),
            //backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Camera'),
            //backgroundColor: Colors.purple
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIn = index;
          });
        },
      ),
    );
  }
}
