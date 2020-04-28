import 'package:flutter/material.dart';
import 'homePage.dart';
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }

}

class _MainState extends State<MainPage>{
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hygiene Homes"),
      ),
      backgroundColor: Color(0xFFF0F0F0),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.book),title: Text("Bookings")),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),title: Text("Acoount")),
          BottomNavigationBarItem(icon: Icon(Icons.more),title: Text("More")),
        ]
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return (_currentIndex==0)? HomePage():Container();
  }

}